import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/models/post_model.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'create_post.dart';

class CommunityDetailsScreen extends ConsumerStatefulWidget {
  final String communityId;
  final String? communityTitle;
  final String? communityThumbnail;

  const CommunityDetailsScreen({
    super.key,
    required this.communityId,
    this.communityTitle,
    this.communityThumbnail,
  });

  @override
  ConsumerState<CommunityDetailsScreen> createState() =>
      _CommunityDetailsScreenState();
}

class _CommunityDetailsScreenState
    extends ConsumerState<CommunityDetailsScreen> {
  static const String defaultSpaceId = '2718';

  @override
  Widget build(BuildContext context) {
    final postsAsync = ref.watch(
      postsProvider((widget.communityId, defaultSpaceId)),
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.communityTitle ?? 'Community'),
              background: widget.communityThumbnail != null
                  ? CachedNetworkImage(
                      imageUrl: widget.communityThumbnail!,
                      fit: BoxFit.cover,
                      errorWidget: (context, url, error) => Container(
                        color: Colors.grey.shade300,
                        child: Icon(
                          Icons.image_not_supported,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    )
                  : Container(
                      color: Colors.grey.shade300,
                      child: Icon(
                        Icons.image,
                        color: Colors.grey.shade600,
                        size: 64,
                      ),
                    ),
            ),
          ),
          postsAsync.when(
            data: (posts) {
              if (posts.isEmpty) {
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
                        const SizedBox(height: AppSizes.paddingMedium),
                        Text(
                          'No posts yet',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                );
              }

              return SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final post = posts[index];
                    return FeedCard(post: post);
                  },
                  childCount: posts.length,
                ),
              );
            },
            loading: () => SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    const SizedBox(height: AppSizes.paddingMedium),
                    Text(
                      AppStrings.loading,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            error: (error, stackTrace) => SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 64,
                      color: Colors.red.shade300,
                    ),
                    const SizedBox(height: AppSizes.paddingMedium),
                    Text(
                      'Error loading posts',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: AppSizes.paddingSmall),
                    Text(
                      error.toString(),
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: AppSizes.paddingMedium),
                    ElevatedButton(
                      onPressed: () {
                        ref.refresh(
                          postsProvider((widget.communityId, defaultSpaceId)),
                        );
                      },
                      child: const Text(AppStrings.retry),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePostScreen(
                communityId: widget.communityId,
                spaceId: defaultSpaceId,
                onPostCreated: () {
                  ref.refresh(postsProvider((widget.communityId, defaultSpaceId)));
                },
              ),
            ),
          );
        },
        tooltip: 'Create Post',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  final Post post;

  const FeedCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    final authorName = post.user?.fullName ?? 'Unknown';
    final authorAvatar = post.user?.profilePic;
    final content = post.feedTxt ?? post.title ?? '';

    return Card(
      margin: const EdgeInsets.all(AppSizes.paddingMedium),
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: authorAvatar != null
                      ? CachedNetworkImageProvider(authorAvatar)
                      : null,
                  child: authorAvatar == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                const SizedBox(width: AppSizes.paddingMedium),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        authorName,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        _formatTime(post.createdAt),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: AppSizes.paddingMedium),
            Text(
              content,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            if (post.files != null && (post.files as List).isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: AppSizes.paddingMedium),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: (post.files as List)
                        .map<Widget>((file) => _buildMediaPreview(file))
                        .toList(),
                  ),
                ),
              ),
            const SizedBox(height: AppSizes.paddingMedium),
            Row(
              children: [
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                    label: Text('${post.likeCount}'),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () => _showCommentsBottomSheet(context, post),
                    icon: const Icon(Icons.comment_outlined),
                    label: Text('${post.commentCount}'),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined),
                    label: const Text(AppStrings.share),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaPreview(dynamic file) {
    final fileLoc = file.fileLoc;
    final type = file.type;

    if (fileLoc == null) return const SizedBox.shrink();

    if (type == 'gif' || (file.extname as String?)?.contains('gif') == true) {
      return Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: fileLoc,
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

  String _formatTime(String? dateTimeStr) {
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

  void _showCommentsBottomSheet(BuildContext context, Post post) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(AppSizes.borderRadiusLarge),
        ),
      ),
      builder: (context) => CommentsBottomSheet(post: post),
    );
  }
}


class CommentsBottomSheet extends ConsumerStatefulWidget {
  final Post post;

  const CommentsBottomSheet({
    super.key,
    required this.post,
  });

  @override
  ConsumerState<CommentsBottomSheet> createState() =>
      _CommentsBottomSheetState();
}

class _CommentsBottomSheetState extends ConsumerState<CommentsBottomSheet> {
  late TextEditingController _commentController;

  @override
  void initState() {
    super.initState();
    _commentController = TextEditingController();
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _submitComment() async {
    final comment = _commentController.text.trim();

    if (comment.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a comment')),
      );
      return;
    }

    ref.read(commentSubmissionLoadingProvider.notifier).state = true;

    try {
      print('Submitting comment: $comment');
      print('Post ID: ${widget.post.id}');

      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        _commentController.clear();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Comment posted!')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error posting comment: $e')),
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
    final isSubmitting = ref.watch(commentSubmissionLoadingProvider);

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(AppSizes.paddingMedium),
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
                  '${widget.post.commentCount}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          ),
          Expanded(
            child: widget.post.comments != null &&
                    (widget.post.comments as List).isNotEmpty
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
                        const SizedBox(height: AppSizes.paddingMedium),
                        Text(
                          'No comments yet',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
          Divider(height: 1, color: Colors.grey.shade300),
          Container(
            padding: EdgeInsets.only(
              left: AppSizes.paddingMedium,
              right: AppSizes.paddingMedium,
              top: AppSizes.paddingMedium,
              bottom: MediaQuery.of(context).viewInsets.bottom +
                  AppSizes.paddingMedium,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _commentController,
                    decoration: InputDecoration(
                      hintText: 'Add a comment...',
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(AppSizes.borderRadiusMedium),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: AppSizes.paddingMedium,
                        vertical: AppSizes.paddingSmall,
                      ),
                    ),
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: AppSizes.paddingSmall),
                GestureDetector(
                  onTap: isSubmitting ? null : _submitComment,
                  child: Container(
                    padding: const EdgeInsets.all(AppSizes.paddingSmall),
                    child: isSubmitting
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
          ),
        ],
      ),
    );
  }

  Widget _buildCommentItem(dynamic comment) {
    final authorName = comment.user?.fullName ?? 'Unknown';
    final authorAvatar = comment.user?.profilePic;
    final content = comment.content ?? comment.text ?? 'No content';
    final createdAt = comment.createdAt;

    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
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
              const SizedBox(width: AppSizes.paddingMedium),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      authorName,
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      _formatCommentTime(createdAt),
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSizes.paddingSmall),
          Text(
            content,
            style: Theme.of(context).textTheme.bodyMedium,
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


