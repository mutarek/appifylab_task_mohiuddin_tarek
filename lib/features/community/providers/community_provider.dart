import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/models/community_response_model.dart';
import 'package:appifylab/models/post_model.dart';
import 'package:appifylab/core/providers/service_providers.dart';

final communitiesProvider = FutureProvider.autoDispose<List<CommunityData>>((ref) async {
  final service = ref.watch(communityApiServiceProvider);
  final response = await service.getCommunities(page: 1);

  return response.data;
});

final searchCommunitiesProvider = FutureProvider.family.autoDispose<List<CommunityData>, String>((ref, query) async {
  if (query.isEmpty) {
    return [];
  }

  final service = ref.watch(communityApiServiceProvider);
  final response = await service.getCommunities(searchQuery: query);

  return response.data;
});

final communityDetailsProvider = FutureProvider.family.autoDispose<CommunityDetails, String>((ref, communityId) async {
  final service = ref.watch(communityApiServiceProvider);
  final response = await service.getCommunityDetails(communityId);
  return response;
});

final postsProvider = FutureProvider.family.autoDispose<List<Post>, (String, String)>((ref, args) async {
  final (communityId, spaceId) = args;
  final service = ref.watch(communityApiServiceProvider);
  final response = await service.getFeeds(
    communityId: communityId,
    spaceId: spaceId,
  );

  late List<dynamic> postsList;
  if (response is List) {
    postsList = response;
  } else if (response is Map<String, dynamic>) {
    postsList = (response['feeds'] as List?) ?? [];
  } else {
    postsList = [];
  }

  return postsList
      .map((e) => Post.fromJson(e as Map<String, dynamic>))
      .toList();
});

final moreFeedsProvider = FutureProvider.family.autoDispose<List<Post>, (String, String, String?)>((ref, args) async {
  final (communityId, spaceId, more) = args;
  final service = ref.watch(communityApiServiceProvider);
  final response = await service.getFeeds(
    communityId: communityId,
    spaceId: spaceId,
    more: more,
  );

  late List<dynamic> postsList;
  if (response is List) {
    postsList = response;
  } else if (response is Map<String, dynamic>) {
    postsList = (response['feeds'] as List?) ?? [];
  } else {
    postsList = [];
  }

  return postsList
      .map((e) => Post.fromJson(e as Map<String, dynamic>))
      .toList();
});

final selectedCommunityIdProvider = StateProvider<String?>((ref) => null);

final selectedSpaceIdProvider = StateProvider<String?>((ref) => null);

final postSubmissionLoadingProvider = StateProvider<bool>((ref) => false);

final commentSubmissionLoadingProvider = StateProvider<bool>((ref) => false);

final searchQueryProvider = StateProvider<String>((ref) => '');

final currentPageProvider = StateProvider<int>((ref) => 1);

final loadingMoreProvider = StateProvider<bool>((ref) => false);

final allCommunitiesProvider = StateProvider<List<CommunityData>>((ref) => []);

final allPostsProvider = StateProvider<List<Post>>((ref) => []);

final selectedFeedSpaceIdProvider = StateProvider<String?>((ref) => '2718');

final morePaginationTokenProvider = StateProvider<String?>((ref) => null);

final searchInputProvider = StateProvider<String>((ref) => '');

