import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';

class CommunityFeedsScreen extends ConsumerStatefulWidget {
  final String communityId;
  final String? communityTitle;
  final String? communityThumbnail;

  const CommunityFeedsScreen({
    super.key,
    required this.communityId,
    this.communityTitle,
    this.communityThumbnail,
  });

  @override
  ConsumerState<CommunityFeedsScreen> createState() =>
      _CommunityFeedsScreenState();
}

class _CommunityFeedsScreenState extends ConsumerState<CommunityFeedsScreen> {
  static const String defaultSpaceId = '2718';

  @override
  Widget build(BuildContext context) {
    final postsAsync = ref.watch(
      postsProvider((widget.communityId, defaultSpaceId)),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.communityTitle ?? 'Community Feeds'),
        elevation: 0,
      ),
      body: postsAsync.when(
        data: (posts) {
          if (posts.isEmpty) {
            return Center(
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
            );
          }

          return RefreshIndicator(
            onRefresh: () async {
              ref.refresh(postsProvider((widget.communityId, defaultSpaceId)));
            },
            child: ListView.builder(
              padding: const EdgeInsets.all(AppSizes.paddingMedium),
              itemCount: posts.length,
              itemBuilder: (context, index) {
                final post = posts[index];
                return FeedCard(post: post);
              },
            ),
          );
        },
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) => Center(
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
                  ref.refresh(postsProvider((widget.communityId, defaultSpaceId)));
                },
                child: const Text(AppStrings.retry),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FeedCard extends StatelessWidget {
  final dynamic post;

  const FeedCard({
    super.key,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    final authorName = post.name ?? post.user?.fullName ?? 'Unknown';
    final authorAvatar = post.pic ?? post.user?.profilePic;
    final content = post.feedTxt ?? post.title ?? '';
    final createdAt = post.createdAt ?? 'Just now';

    return Card(
      margin: const EdgeInsets.only(bottom: AppSizes.paddingMedium),
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
                      ? NetworkImage(authorAvatar)
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
                        createdAt,
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
                    label: Text('${post.likeCount ?? 0}'),
                  ),
                ),
                Expanded(
                  child: TextButton.icon(
                    onPressed: () {},
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
      return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          fileLoc,
          width: 150,
          height: 150,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return Container(
              width: 150,
              height: 150,
              color: Colors.grey.shade300,
              child: const Icon(Icons.image_not_supported),
            );
          },
        ),
      );
    }

    return const SizedBox.shrink();
  }
}

