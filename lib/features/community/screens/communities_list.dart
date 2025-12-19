import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:appifylab/models/community_response_model.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';

class CommunitiesListScreen extends ConsumerStatefulWidget {
  const CommunitiesListScreen({super.key});

  @override
  ConsumerState<CommunitiesListScreen> createState() =>
      _CommunitiesListScreenState();
}

class _CommunitiesListScreenState
    extends ConsumerState<CommunitiesListScreen> {
  final searchQueryController = TextEditingController();

  @override
  void dispose() {
    searchQueryController.dispose();
    super.dispose();
  }

  void handleSearchInput(String query) {
    ref.read(searchQueryProvider.notifier).state = query;
    ref.read(currentPageProvider.notifier).state = 1;
  }

  @override
  Widget build(BuildContext context) {
    final communitiesResult = ref.watch(communitiesProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Communities'),
        elevation: 0,
      ),
      body: Column(
        children: [
          _buildSearchBar(),
          Expanded(
            child: _buildCommunitiesContent(context, communitiesResult),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: TextField(
        controller: searchQueryController,
        onChanged: handleSearchInput,
        decoration: InputDecoration(
          hintText: 'Search communities...',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        ),
      ),
    );
  }

  Widget _buildCommunitiesContent(
    BuildContext context,
    AsyncValue<List<CommunityData>> communitiesResult,
  ) {
    return communitiesResult.when(
      data: (communities) {
        if (communities.isEmpty) {
          return _buildEmptyCommunitiesState();
        }

        return RefreshIndicator(
          onRefresh: () async {
            // ignore: unused_result
            ref.refresh(communitiesProvider);
          },
          child: GridView.builder(
            padding: const EdgeInsets.all(16),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
            ),
            itemCount: communities.length,
            itemBuilder: (context, index) {
              final community = communities[index];
              return _buildCommunityCard(context, community);
            },
          ),
        );
      },
      loading: () => _buildLoadingGrid(),
      error: (error, stack) => _buildErrorState(error),
    );
  }

  Widget _buildEmptyCommunitiesState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.groups_outlined,
            size: 64,
            color: Colors.grey.shade400,
          ),
          const SizedBox(height: 16),
          Text(
            'No communities found',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Colors.grey.shade600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
        );
      },
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
          const SizedBox(height: 16),
          Text(
            'Failed to load communities',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityCard(BuildContext context, CommunityData community) {
    return GestureDetector(
      onTap: () => _navigateToCommunityDetails(context, community),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: _buildCommunityImage(community),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    community.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBadge(
                        '${community.totalMembers} members',
                        Icons.people,
                      ),
                      _buildBadge(
                        '${community.totalFeeds} posts',
                        Icons.feed,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCommunityImage(CommunityData community) {
    if (community.thumbnail != null) {
      return CachedNetworkImage(
        imageUrl: community.thumbnail!,
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
        Icons.groups,
        size: 48,
        color: Colors.grey.shade600,
      ),
    );
  }

  Widget _buildBadge(String label, IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: Colors.grey.shade600),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ),
    );
  }

  void _navigateToCommunityDetails(BuildContext context, CommunityData community) {
    context.push(
      '/home/community/${community.id}?title=${community.title}&thumbnail=${community.thumbnail}',
    );
  }
}

