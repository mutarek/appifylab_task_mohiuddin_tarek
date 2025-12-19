import 'package:appifylab/config/api_config.dart';
import 'package:appifylab/models/post_model.dart';
import 'package:appifylab/models/community_response_model.dart';
import 'package:appifylab/models/exceptions.dart';
import 'package:appifylab/core/services/dio_client.dart';

class CommunityApiService {
  final DioClient _dioClient;

  CommunityApiService({required DioClient dioClient}) : _dioClient = dioClient;

  Future<CommunitiesResponse> getCommunities({
    int page = 1,
    int limit = ApiConfig.pageSize,
    String? searchQuery,
  }) async {
    try {
      final queryParams = {
        'page': page,
        'limit': limit,
        if (searchQuery != null && searchQuery.isNotEmpty) 'str': searchQuery,
      };

      final response = await _dioClient.get<Map<String, dynamic>>(
        ApiConfig.getCommunitiesEndpoint,
        queryParameters: queryParams,
      );

      return CommunitiesResponse.fromJson(response);
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<CommunityDetails> getCommunityDetails(String communityId) async {
    try {
      final endpoint = '${ApiConfig.getCommunityDetailsEndpoint}id=$communityId';

      final response = await _dioClient.get<Map<String, dynamic>>(
        endpoint,
      );

      return CommunityDetails.fromJson(response);
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<dynamic> getFeeds({
    required String communityId,
    required String spaceId,
    String? more,
  }) async {
    try {
      final endpoint = '${ApiConfig.getCommunityFeedsEndpoint}$communityId';

      final queryParams = {
        'space_id': spaceId,
        'status': 'feed',
        if (more != null && more.isNotEmpty) 'more': more,
      };

      final response = await _dioClient.get<dynamic>(
        endpoint,
        queryParameters: queryParams,
      );

      return response;
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<Post> createPost({
    required String communityId,
    required String spaceId,
    required String content,
    String? bgColor,
  }) async {
    try {
      final data = {
        'community_id': communityId,
        'space_id': spaceId,
        'feed_txt': content,
        'file_type': 'text',
        if (bgColor != null) 'bg_color': bgColor,
      };

      final response = await _dioClient.post<Map<String, dynamic>>(
        ApiConfig.createPostEndpoint,
        data: data,
      );

      return Post.fromJson(response);
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<Post> updatePost({
    required String postId,
    required String content,
  }) async {
    try {
      final data = {
        'post_id': postId,
        'feed_txt': content,
      };

      final response = await _dioClient.post<Map<String, dynamic>>(
        ApiConfig.updatePostEndpoint,
        data: data,
      );

      return Post.fromJson(response);
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> deletePost(String postId) async {
    try {
      await _dioClient.post(
        ApiConfig.deletePostEndpoint,
        data: {'post_id': postId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> likePost(String postId) async {
    try {
      await _dioClient.post(
        ApiConfig.likePostEndpoint,
        data: {'post_id': postId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> unlikePost(String postId) async {
    try {
      await _dioClient.post(
        ApiConfig.unlikePostEndpoint,
        data: {'post_id': postId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<List<Comment>> getComments({
    required String postId,
    int page = 1,
    int limit = ApiConfig.pageSize,
  }) async {
    try {
      final queryParams = {
        'post_id': postId,
        'page': page,
        'limit': limit,
      };

      final response = await _dioClient.get<Map<String, dynamic>>(
        ApiConfig.getCommentsEndpoint,
        queryParameters: queryParams,
      );

      final comments = response['comments'] as List?;
      return (comments ?? [])
          .map((e) => Comment.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<Comment> addComment({
    required String postId,
    required String content,
  }) async {
    try {
      final data = {
        'post_id': postId,
        'content': content,
      };

      final response = await _dioClient.post<Map<String, dynamic>>(
        ApiConfig.createCommentEndpoint,
        data: data,
      );

      return Comment.fromJson(response);
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> deleteComment(String commentId) async {
    try {
      await _dioClient.post(
        ApiConfig.deleteCommentEndpoint,
        data: {'comment_id': commentId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> followSpace(String spaceId) async {
    try {
      await _dioClient.post(
        ApiConfig.followSpaceEndpoint,
        data: {'space_id': spaceId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  Future<void> unfollowSpace(String spaceId) async {
    try {
      await _dioClient.post(
        ApiConfig.unfollowSpaceEndpoint,
        data: {'space_id': spaceId},
      );
    } catch (e) {
      throw _handleException(e);
    }
  }

  ApiException _handleException(dynamic error) {
    if (error is ApiException) {
      return error;
    }

    if (error is Exception) {
      return ApiException(
        message: error.toString(),
        statusCode: null,
      );
    }

    return ApiException(
      message: 'Unknown error occurred',
      statusCode: null,
    );
  }
}

