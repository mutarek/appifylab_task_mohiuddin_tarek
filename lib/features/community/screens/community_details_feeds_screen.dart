import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/models/post_model.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:like_button/like_button.dart';

import '../../../core/providers/service_providers.dart';

class CommunityDetailsFeedsScreen extends ConsumerStatefulWidget {
  final String communityId;
  final String? communityTitle;
  final String? communityThumbnail;

  const CommunityDetailsFeedsScreen({
    super.key,
    required this.communityId,
    this.communityTitle,
    this.communityThumbnail,
  });

  @override
  ConsumerState<CommunityDetailsFeedsScreen> createState() =>
      _CommunityDetailsFeedsScreenState();
}

class _CommunityDetailsFeedsScreenState
    extends ConsumerState<CommunityDetailsFeedsScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 1, vsync: this);
    _scrollController.addListener(_onScroll);
    ref.read(selectedFeedSpaceIdProvider.notifier).state = '2718';
  }

  @override
  void dispose() {
    _tabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMorePosts();
    }
  }

  Future<void> _loadMorePosts() async {
    final isLoadingMore = ref.read(loadingMoreProvider);
    final morePaginationToken = ref.read(morePaginationTokenProvider);
    if (isLoadingMore || morePaginationToken == null) return;

    ref.read(loadingMoreProvider.notifier).state = true;
    final selectedSpaceId = ref.read(selectedFeedSpaceIdProvider) ?? '2718';

    try {
      final service = ref.read(communityApiServiceProvider);
      final newPosts = await service.getFeeds(
        communityId: widget.communityId,
        spaceId: selectedSpaceId,
        more: morePaginationToken,
      );

      if (newPosts is List) {
        final allPosts = ref.read(allPostsProvider);
        ref.read(allPostsProvider.notifier).state = [
          ...allPosts,
          ...newPosts.whereType<Post>(),
        ];
        ref.read(loadingMoreProvider.notifier).state = false;
      }
    } catch (e) {
      ref.read(loadingMoreProvider.notifier).state = false;
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading more posts: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final posts = ref.watch(allPostsProvider);
    final isLoadingMore = ref.watch(loadingMoreProvider);

    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.communityTitle ?? 'Community'),
              background: CachedNetworkImage(
                imageUrl: widget.communityThumbnail ?? '',
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  color: Colors.grey.shade300,
                  child: Icon(
                    Icons.image_not_supported,
                    color: Colors.grey.shade600,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: _buildCommunityInfo(),
          ),
          SliverToBoxAdapter(
            child: _buildSpaceSelector(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index >= posts.length) {
                  if (isLoadingMore) {
                    return const Padding(
                      padding: EdgeInsets.all(16),
                      child: CircularProgressIndicator(),
                    );
                  }
                  return const SizedBox.shrink();
                }

                return FeedCard(
                  post: posts[index],
                  onLike: () {
                    _likePost(posts[index].id);
                  },
                );
              },
              childCount: posts.length + (isLoadingMore ? 1 : 0),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreatePostDialog,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildCommunityInfo() {
    return Container(
      padding: const EdgeInsets.all(AppSizes.paddingLarge),
      color: Colors.grey.shade50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.communityTitle ?? 'Community',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Icon(Icons.people, color: Colors.grey.shade600, size: 16),
              const SizedBox(width: 4),
              Text('Members', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(width: 16),
              Icon(Icons.feed, color: Colors.grey.shade600, size: 16),
              const SizedBox(width: 4),
              Text('Posts', style: Theme.of(context).textTheme.bodySmall),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            'Community description goes here',
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildSpaceSelector() {
    final selectedSpaceId = ref.watch(selectedFeedSpaceIdProvider);

    return Padding(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Channel',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                value: selectedSpaceId,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                items: [
                  DropdownMenuItem(
                    value: '2718',
                    child: const Text('General'),
                  ),
                ],
                onChanged: (value) {
                  ref.read(selectedFeedSpaceIdProvider.notifier).state = value;
                  ref.read(allPostsProvider.notifier).state = [];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _likePost(int postId) {
    print('Liked post: $postId');
  }

  void _showCreatePostDialog() {
    showDialog(
      context: context,
      builder: (context) => CreatePostDialog(
        communityId: widget.communityId,
        spaceId: ref.read(selectedFeedSpaceIdProvider) ?? '2718',
        onPostCreated: () {
          ref.read(allPostsProvider.notifier).state = [];
          Navigator.pop(context);
        },
      ),
    );
  }
}

class FeedCard extends ConsumerStatefulWidget {
  final Post post;
  final VoidCallback onLike;

  const FeedCard({
    super.key,
    required this.post,
    required this.onLike,
  });

  @override
  ConsumerState<FeedCard> createState() => _FeedCardState();
}

class _FeedCardState extends ConsumerState<FeedCard> {
  bool _isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: widget.post.user?.profilePic != null
                      ? NetworkImage(widget.post.user!.profilePic!)
                      : null,
                  child: widget.post.user?.profilePic == null
                      ? const Icon(Icons.person)
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.post.user?.fullName ?? 'Unknown',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Text(
                        _formatTime(widget.post.createdAt),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
                PopupMenuButton(
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      child: Text('Delete'),
                    ),
                    const PopupMenuItem(
                      child: Text('Edit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              widget.post.feedTxt ?? widget.post.title ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 12),
          if (widget.post.files != null && (widget.post.files as List).isNotEmpty)
            _buildMediaGallery(),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      LikeButton(
                        isLiked: _isLiked,
                        onTap: (isLiked) async {
                          setState(() {
                            _isLiked = !isLiked;
                          });
                          widget.onLike();
                          return !isLiked;
                        },
                      ),
                      Text('${widget.post.likeCount}'),
                    ],
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () => _showCommentsBottomSheet(),
                    icon: const Icon(Icons.comment_outlined),
                    label: Text('${widget.post.commentCount}'),
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMediaGallery() {
    final files = widget.post.files as List;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: files.map<Widget>((file) {
          return Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl: file.fileLoc ?? '',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
                errorWidget: (context, url, error) => Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.image_not_supported),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  void _showCommentsBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => CommentsBottomSheet(
        postId: widget.post.id,
      ),
    );
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
}

class CommentsBottomSheet extends StatelessWidget {
  final int postId;

  const CommentsBottomSheet({
    super.key,
    required this.postId,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Comments',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Comments will appear here',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.grey.shade300),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a comment...',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                FloatingActionButton(
                  mini: true,
                  onPressed: () {},
                  child: const Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CreatePostDialog extends StatefulWidget {
  final String communityId;
  final String spaceId;
  final VoidCallback onPostCreated;

  const CreatePostDialog({
    super.key,
    required this.communityId,
    required this.spaceId,
    required this.onPostCreated,
  });

  @override
  State<CreatePostDialog> createState() => _CreatePostDialogState();
}

class _CreatePostDialogState extends State<CreatePostDialog> {
  late TextEditingController _contentController;
  Color _selectedBgColor = Colors.white;

  @override
  void initState() {
    super.initState();
    _contentController = TextEditingController();
  }

  @override
  void dispose() {
    _contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Create Post',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Choose background color',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 8),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      _buildColorOption(Colors.white, 'White'),
                      _buildColorOption(
                        Colors.blue.shade400,
                        'Blue',
                      ),
                      _buildColorOption(
                        Colors.orange.shade400,
                        'Orange',
                      ),
                      _buildColorOption(
                        Colors.purple.shade400,
                        'Purple',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: TextField(
              controller: _contentController,
              maxLines: 4,
              decoration: InputDecoration(
                hintText: 'What\'s on your mind?',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _submitPost,
                  child: const Text('Post'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildColorOption(Color color, String label) {
    final isSelected = _selectedBgColor == color;
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedBgColor = color;
          });
        },
        child: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: isSelected ? Colors.blue : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: isSelected
              ? const Icon(Icons.check, color: Colors.blue)
              : null,
        ),
      ),
    );
  }

  void _submitPost() {
    print('Submitting post: ${_contentController.text}');
    widget.onPostCreated();
  }
}

