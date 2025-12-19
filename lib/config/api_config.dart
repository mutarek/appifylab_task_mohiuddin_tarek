class ApiConfig {
  static const String baseUrl = 'https://ezyappteam.ezycourse.com/api/app';

  static const String loginEndpoint = '/student/auth/login';
  static const String logoutEndpoint = '/student/auth/logout';
  static const String refreshTokenEndpoint = '/student/auth/refresh-token';

  static const String getCommunitiesEndpoint = '/student/community/getEnrolledCommunityList';
  static const String getCommunityDetailsEndpoint = '/teacher/community/getCommunityByCommunityIdV2/';
  static const String getCommunityFeedsEndpoint = '/public/feeds/';

  static const String createPostEndpoint = '/student/posts/create';
  static const String updatePostEndpoint = '/student/posts/update';
  static const String deletePostEndpoint = '/student/posts/delete';
  static const String likePostEndpoint = '/student/posts/like';
  static const String unlikePostEndpoint = '/student/posts/unlike';

  static const String getCommentsEndpoint = '/student/comments/getList';
  static const String createCommentEndpoint = '/student/comments/create';
  static const String deleteCommentEndpoint = '/student/comments/delete';

  static const String getProfileEndpoint = '/student/auth/getUser';

  static const String followSpaceEndpoint = '/student/space/follow';
  static const String unfollowSpaceEndpoint = '/student/space/unfollow';

  static const int pageSize = 20;
}

