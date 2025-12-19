import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/models/post_model.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'create_post.dart';

class CommunityDetailsScreen extends ConsumerStatefulWidget {
  final String communityId;
  final String? communityTitle;
  final String? communityThumbnail;

  const CommunityDetailsScreen({
    Key? key,
    required this.communityId,
    this.communityTitle,
    this.communityThumbnail,
  }) : super(key: key);

  @override
  ConsumerState<CommunityDetailsScreen> createState() =>
      _CommunityDetailsScreenState();
}

class _CommunityDetailsScreenState
    extends ConsumerState<CommunityDetailsScreen> {
  static const defaultSpaceChannel = '2718';

  @override
  Widget build(BuildContext context) {
    final postsData = ref.watch(
      postsProvider((widget.communityId, defaultSpaceChannel)),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _buildHeaderBar(context),
          _buildContentArea(context, postsData),
        ],
      ),
      floatingActionButton: _buildCreatePostButton(context),
    );
  }

  Widget _buildHeaderBar(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(widget.communityTitle ?? 'Community'),
        background: _buildCommunityImage(),
      ),
    );
  }

  Widget _buildCommunityImage() {
    if (widget.communityThumbnail != null) {
      return CachedNetworkImage(
        imageUrl: widget.communityThumbnail!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Container(
          color: Colors.grey.shade300,
          child: Icon(
            Icons.image_not_supported,
            color: Colors.grey.shade600,
          ),
        ),
      );
    }

    return Container(
      color: Colors.grey.shade300,
      child: Icon(
        Icons.image,
        color: Colors.grey.shade600,
        size: 64,
      ),
    );
  }

  Widget _buildContentArea(BuildContext context, AsyncValue<List<Post>> postsData) {
    return postsData.when(
      data: (postsList) {
        if (postsList.isEmpty) {
          return _buildEmptyState();
        }

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              final currentPost = postsList[index];
              return PostWidget(post: currentPost);
            },
            childCount: postsList.length,
          ),
        );
      },
      loading: () => _buildLoadingState(),
      error: (error, stackTrace) => _buildErrorState(error),
    );
  }

  Widget _buildEmptyState() {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.feed_outlined,
              size: 64,
              color: Colors.grey.shade400,
            ),
            const SizedBox(height: 16),
            Text(
              'No posts yet',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircularProgressIndicator(),
            const SizedBox(height: 16),
            Text(
              'Loading posts...',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return SliverFillRemaining(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_outline,
              size: 64,
              color: Colors.red.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              'Failed to load posts',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            Text(
              error.toString(),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                ref.refresh(
                  postsProvider((widget.communityId, defaultSpaceChannel)),
                );
              },
              child: const Text('Retry'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCreatePostButton(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _navigateToCreatePost(context),
      tooltip: 'Create New Post',
      child: const Icon(Icons.add),
    );
  }

  void _navigateToCreatePost(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CreatePostScreen(
          communityId: widget.communityId,
          spaceId: defaultSpaceChannel,
          onPostCreated: () {
            // Refresh posts when new one is created
            ref.refresh(
              postsProvider((widget.communityId, defaultSpaceChannel)),
            );
          },
        ),
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Post post;

  const PostWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authorName = post.user?.fullName ?? 'Unknown User';
    final authorAvatar = post.user?.profilePic;
    final postContent = post.feedTxt ?? post.title ?? '(No content)';

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPostAuthorInfo(authorName, authorAvatar),
            const SizedBox(height: 16),
            _buildPostContent(postContent),
            if (post.files != null && (post.files as List).isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: _buildMediaGallery(post.files as List),
              ),
            const SizedBox(height: 16),
            _buildPostInteractions(context, post),
          ],
        ),
      ),
    );
  }

  Widget _buildPostAuthorInfo(String name, String? avatar) {
    return Row(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundImage: avatar != null
              ? CachedNetworkImageProvider(avatar)
              : null,
          child: avatar == null ? const Icon(Icons.person) : null,
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                _formatPostTime(post.createdAt),
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostContent(String content) {
    return Text(
      content,
      style: const TextStyle(fontSize: 14),
    );
  }

  Widget _buildMediaGallery(List mediaItems) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mediaItems
            .map<Widget>((file) => _buildMediaItem(file))
            .toList(),
      ),
    );
  }

  Widget _buildMediaItem(dynamic file) {
    final imageUrl = file.fileLoc;
    final fileType = file.type;

    if (imageUrl == null) return const SizedBox.shrink();

    if (fileType == 'gif' || (file.extname as String?)?.contains('gif') == true) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            width: 150,
            height: 150,
            fit: BoxFit.cover,
            errorWidget: (context, error, stackTrace) {
              return Container(
                width: 150,
                height: 150,
                color: Colors.grey.shade300,
                child: const Icon(Icons.image_not_supported),
              );
            },
          ),
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Widget _buildPostInteractions(BuildContext context, Post post) {
    return Row(
      children: [
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
            label: Text('${post.likeCount ?? 0}'),
          ),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () => _showCommentsSheet(context, post),
            icon: const Icon(Icons.comment_outlined),
            label: Text('${post.commentCount ?? 0}'),
          ),
        ),
        Expanded(
          child: TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.share_outlined),
            label: const Text('Share'),
          ),
        ),
      ],
    );
  }

  void _showCommentsSheet(BuildContext context, Post post) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) => CommentsSheet(post: post),
    );
  }

  String _formatPostTime(String? dateTimeStr) {
    if (dateTimeStr == null) return '';
    try {
      final dateTime = DateTime.parse(dateTimeStr);
      final now = DateTime.now();
      final difference = now.difference(dateTime);

      if (difference.inSeconds < 60) {
        return 'Just now';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes}m ago';
      } else if (difference.inHours < 24) {
        return '${difference.inHours}h ago';
      } else {
        return '${difference.inDays}d ago';
      }
    } catch (e) {
      return '';
    }
  }
}

class CommentsSheet extends ConsumerStatefulWidget {
  final Post post;

  const CommentsSheet({
    Key? key,
    required this.post,
  }) : super(key: key);

  @override
  ConsumerState<CommentsSheet> createState() => _CommentsSheetState();
}

class _CommentsSheetState extends ConsumerState<CommentsSheet> {
  final commentInputController = TextEditingController();

  @override
  void dispose() {
    commentInputController.dispose();
    super.dispose();
  }

  void submitCommentToPost() async {
    final commentText = commentInputController.text.trim();

    if (commentText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please write a comment')),
      );
      return;
    }

    ref.read(commentSubmissionLoadingProvider.notifier).state = true;

    try {
      print('Submitting comment: $commentText');
      print('Post ID: ${widget.post.id}');

      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        commentInputController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Comment added!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    } finally {
      if (mounted) {
        ref.read(commentSubmissionLoadingProvider.notifier).state = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final isSubmittingComment = ref.watch(commentSubmissionLoadingProvider);

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => Column(
        children: [
          _buildHeader(),
          _buildCommentsList(scrollController),
          _buildCommentInputSection(isSubmittingComment),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Comments',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '${widget.post.commentCount ?? 0}',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildCommentsList(ScrollController scrollController) {
    final hasComments = widget.post.comments != null &&
        (widget.post.comments as List).isNotEmpty;

    return Expanded(
      child: hasComments
          ? ListView.builder(
            controller: scrollController,
            itemCount: (widget.post.comments as List).length,
            itemBuilder: (context, index) {
              final comment = (widget.post.comments as List)[index];
              return _buildCommentItem(comment);
            },
          )
          : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.comment_outlined,
                  size: 48,
                  color: Colors.grey.shade400,
                ),
                const SizedBox(height: 16),
                Text(
                  'No comments yet',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            ),
          ),
    );
  }

  Widget _buildCommentItem(dynamic comment) {
    final authorName = comment.user?.fullName ?? 'Unknown';
    final authorAvatar = comment.user?.profilePic;
    final commentText = comment.content ?? comment.text ?? 'No text';

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: authorAvatar != null
                    ? CachedNetworkImageProvider(authorAvatar)
                    : null,
                child: authorAvatar == null ? const Icon(Icons.person) : null,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _formatCommentTime(comment.createdAt),
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            commentText,
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentInputSection(bool isSubmittingComment) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: commentInputController,
              decoration: InputDecoration(
                hintText: 'Add a comment...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
              ),
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: isSubmittingComment ? null : submitCommentToPost,
            child: Container(
              padding: const EdgeInsets.all(8),
              child: isSubmittingComment
                  ? const SizedBox(
                    height: 24,
                    width: 24,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  )
                  : Icon(
                    Icons.send,
                    color: Theme.of(context).primaryColor,
                  ),
            ),
          ),
        ],
      ),
    );
  }

  String _formatCommentTime(String? dateTimeStr) {
    if (dateTimeStr == null) return '';
    try {
      final dateTime = DateTime.parse(dateTimeStr);
      final now = DateTime.now();
      final difference = now.difference(dateTime);

      if (difference.inSeconds < 60) {
        return 'Just now';
      } else if (difference.inMinutes < 60) {
        return '${difference.inMinutes}m ago';
      } else if (difference.inHours < 24) {
        return '${difference.inHours}h ago';
      } else {
        return '${difference.inDays}d ago';
      }
    } catch (e) {
      return '';
    }
  }
}

