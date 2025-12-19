import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/models/community_response_model.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/providers/service_providers.dart';

class CommunitiesListScreen extends ConsumerStatefulWidget {
  const CommunitiesListScreen({super.key});

  @override
  ConsumerState<CommunitiesListScreen> createState() =>
      _CommunitiesListScreenState();
}

class _CommunitiesListScreenState extends ConsumerState<CommunitiesListScreen> {
  late TextEditingController _searchController;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      _loadMore();
    }
  }

  Future<void> _loadMore() async {
    final isLoadingMore = ref.read(loadingMoreProvider);
    if (isLoadingMore) return;

    ref.read(loadingMoreProvider.notifier).state = true;
    final currentPage = ref.read(currentPageProvider);
    final searchQuery = ref.read(searchInputProvider);

    ref.read(currentPageProvider.notifier).state = currentPage + 1;

    try {
      final service = ref.read(communityApiServiceProvider);
      final response = await service.getCommunities(
        page: currentPage + 1,
        searchQuery: searchQuery.isNotEmpty ? searchQuery : null,
      );

      final allCommunities = ref.read(allCommunitiesProvider);
      ref.read(allCommunitiesProvider.notifier).state = [
        ...allCommunities,
        ...response.data,
      ];
      ref.read(loadingMoreProvider.notifier).state = false;
    } catch (e) {
      ref.read(loadingMoreProvider.notifier).state = false;
      final currentPage = ref.read(currentPageProvider);
      ref.read(currentPageProvider.notifier).state = currentPage - 1;
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading more: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchQuery = ref.watch(searchInputProvider);
    final currentPage = ref.watch(currentPageProvider);
    final isLoadingMore = ref.watch(loadingMoreProvider);
    final allCommunities = ref.watch(allCommunitiesProvider);

    final communitiesAsync = searchQuery.isEmpty
        ? ref.watch(communitiesProvider)
        : ref.watch(searchCommunitiesProvider(searchQuery));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Communities'),
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSizes.paddingMedium),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search communities',
                prefixIcon: const Icon(Icons.search),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          _searchController.clear();
                          ref.read(searchInputProvider.notifier).state = '';
                          ref.read(currentPageProvider.notifier).state = 1;
                          ref.read(allCommunitiesProvider.notifier).state = [];
                        },
                      )
                    : null,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: (value) {
                ref.read(searchInputProvider.notifier).state = value;
                ref.read(currentPageProvider.notifier).state = 1;
                ref.read(allCommunitiesProvider.notifier).state = [];
              },
            ),
          ),
          Expanded(
            child: communitiesAsync.when(
              data: (communities) {
                if (searchQuery.isEmpty) {
                  if (allCommunities.isEmpty) {
                    Future.microtask(() {
                      ref.read(allCommunitiesProvider.notifier).state = communities;
                    });
                  }
                }

                final displayCommunities =
                    searchQuery.isEmpty ? allCommunities : communities;

                if (displayCommunities.isEmpty) {
                  return _buildEmptyState();
                }

                return RefreshIndicator(
                  onRefresh: () async {
                    ref.read(currentPageProvider.notifier).state = 1;
                    ref.read(allCommunitiesProvider.notifier).state = [];
                    ref.refresh(communitiesProvider);
                  },
                  child: GridView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(AppSizes.paddingMedium),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: AppSizes.paddingMedium,
                      mainAxisSpacing: AppSizes.paddingMedium,
                    ),
                    itemCount: displayCommunities.length +
                        (isLoadingMore ? 2 : 0),
                    itemBuilder: (context, index) {
                      if (index >= displayCommunities.length) {
                        return _buildShimmerCard();
                      }

                      final community = displayCommunities[index];
                      return CommunityCard(
                        community: community,
                        onTap: () {
                          context.go(
                            '/home/community/${community.id}?title=${Uri.encodeComponent(community.title)}&thumbnail=${Uri.encodeComponent(community.thumbnail ?? '')}',
                          );
                        },
                      );
                    },
                  ),
                );
              },
              loading: () => _buildLoadingShimmer(),
              error: (error, stackTrace) => _buildErrorState(error),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.groups_outlined,
            size: 64,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: AppSizes.paddingMedium),
          Text(
            'No communities found',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppSizes.paddingSmall),
          ElevatedButton(
            onPressed: () {
              _searchController.clear();
              ref.read(searchInputProvider.notifier).state = '';
              ref.read(currentPageProvider.notifier).state = 1;
              ref.read(allCommunitiesProvider.notifier).state = [];
            },
            child: const Text('Clear Search'),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(Object error) {
    return Center(
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
            'Error loading communities',
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
              ref.read(currentPageProvider.notifier).state = 1;
              ref.read(allCommunitiesProvider.notifier).state = [];
              ref.refresh(communitiesProvider);
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingShimmer() {
    return GridView.builder(
      padding: const EdgeInsets.all(AppSizes.paddingMedium),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.85,
        crossAxisSpacing: AppSizes.paddingMedium,
        mainAxisSpacing: AppSizes.paddingMedium,
      ),
      itemCount: 6,
      itemBuilder: (context, index) => _buildShimmerCard(),
    );
  }

  Widget _buildShimmerCard() {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

class CommunityCard extends StatelessWidget {
  final CommunityData community;
  final VoidCallback onTap;

  const CommunityCard({
    super.key,
    required this.community,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(8),
                  ),
                  image: community.thumbnail != null
                      ? DecorationImage(
                          image: NetworkImage(community.thumbnail!),
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: Colors.grey.shade300,
                ),
                child: community.thumbnail == null
                    ? Center(
                        child: Icon(
                          Icons.image,
                          color: Colors.grey.shade600,
                          size: 32,
                        ),
                      )
                    : null,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppSizes.paddingSmall),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    community.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        size: 12,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${community.totalMembers}',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                      const SizedBox(width: 8),
                      Icon(
                        Icons.feed,
                        size: 12,
                        color: Colors.grey.shade600,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        '${community.totalFeeds}',
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  if (community.status == 'EXPIRED')
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red.shade100,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'EXPIRED',
                        style: Theme.of(context).textTheme.labelSmall?.copyWith(
                              color: Colors.red.shade700,
                              fontSize: 10,
                            ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

