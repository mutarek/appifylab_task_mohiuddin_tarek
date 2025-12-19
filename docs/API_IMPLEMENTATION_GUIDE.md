# 🚀 COMPLETE API SERVICES IMPLEMENTATION GUIDE

## Service Structure

Each feature service should be organized to handle all its API operations in a clean, testable way.

### Service Template Pattern

```dart
class XxxApiService {
  final DioClient _dioClient;

  XxxApiService({required DioClient dioClient}) : _dioClient = dioClient;

  // Methods grouped by functionality
  // With clear documentation and error handling
}
```

---

## 1. AUTH API SERVICE

```dart
// features/auth/services/auth_api_service.dart

class AuthApiService {
  // Login & Logout
  Future<AuthResponse> login(String email, String password)
  Future<void> logout()
  Future<AuthResponse> refreshToken()
  
  // User Profile
  Future<User> getCurrentUser()
  
  // Token Management
  Future<String?> getStoredToken()
  Future<void> saveToken(String token)
  Future<void> clearToken()
}
```

---

## 2. COMMUNITY API SERVICE

```dart
// features/community/services/community_api_service.dart

class CommunityApiService {
  // Communities CRUD
  Future<CommunitiesResponse> getCommunities(
    {int page = 1, int limit = 20, String? searchQuery}
  )
  Future<CommunityDetails> getCommunityDetails(String communityId)
  
  // Feeds/Posts
  Future<dynamic> getFeeds(
    {required String communityId, 
     required String spaceId, 
     String? more}
  )
  
  // Posts CRUD
  Future<Post> createPost(
    {required String communityId,
     required String spaceId,
     required String content,
     String? bgColor}
  )
  Future<Post> updatePost({required String postId, required String content})
  Future<void> deletePost(String postId)
  
  // Interactions
  Future<void> likePost(String postId)
  Future<void> unlikePost(String postId)
  
  // Comments
  Future<List<Comment>> getComments({required String postId, int page = 1})
  Future<Comment> addComment({required String postId, required String content})
  Future<void> deleteComment(String commentId)
  
  // Spaces
  Future<void> followSpace(String spaceId)
  Future<void> unfollowSpace(String spaceId)
  Future<List<Post>> getSpacePosts({required String spaceId, int page = 1})
  
  // Tabs
  Future<List<TabSetting>> getTabSettings(String communityId)
}
```

---

## 3. PROFILE API SERVICE

```dart
// features/profile/services/profile_api_service.dart

class ProfileApiService {
  // Profile CRUD
  Future<User> getUserProfile()
  Future<User> getUserProfileById(String userId)
  Future<User> updateProfile({
    String? fullName,
    String? bio,
    String? profilePic,
    String? coverPic,
    String? aboutMe,
    String? globeLink,
    String? youtubeLink,
    String? linkedinLink,
    String? facebookLink,
  })
  
  // Profile Stats
  Future<int> getTotalCourses()
  Future<int> getTotalCommunities()
  Future<int> getTotalGroups()
  
  // Notifications
  Future<List<Notification>> getNotifications({int page = 1})
  Future<void> markNotificationAsRead(String notificationId)
}
```

---

## 4. ADDITIONAL SERVICES (Future)

### Search Service
```dart
Future<SearchResults> search(String query, String type)
Future<List<Community>> searchCommunities(String query)
Future<List<Post>> searchPosts(String query)
Future<List<User>> searchUsers(String query)
```

### Messaging Service
```dart
Future<List<Message>> getMessages(String userId)
Future<Message> sendMessage(String recipientId, String message)
Future<void> deleteMessage(String messageId)
```

### Notification Service
```dart
Future<List<Notification>> getNotifications()
Future<void> markAsRead(String id)
Future<void> deleteNotification(String id)
```

---

## API Config Organization

```dart
// config/api_config.dart

class ApiConfig {
  static const String baseUrl = 'https://ezyappteam.ezycourse.com/api/app';

  // Auth
  static const String loginEndpoint = '/student/auth/login';
  static const String logoutEndpoint = '/student/auth/logout';
  static const String refreshTokenEndpoint = '/student/auth/refresh-token';
  static const String getCurrentUserEndpoint = '/student/auth/getUser';

  // Community
  static const String getCommunitiesEndpoint = '/student/community/getEnrolledCommunityList';
  static const String getCommunityDetailsEndpoint = '/teacher/community/getCommunityByCommunityIdV2/';
  static const String getCommunityFeedsEndpoint = '/public/feeds/';
  static const String getTabSettingsEndpoint = '/student/community/getTabSettings';
  static const String getSpacesEndpoint = '/student/community/getSpaces';

  // Posts
  static const String getPostsEndpoint = '/student/posts/getList';
  static const String createPostEndpoint = '/student/posts/create';
  static const String updatePostEndpoint = '/student/posts/update';
  static const String deletePostEndpoint = '/student/posts/delete';
  static const String likePostEndpoint = '/student/posts/like';
  static const String unlikePostEndpoint = '/student/posts/unlike';

  // Comments
  static const String getCommentsEndpoint = '/student/comments/getList';
  static const String createCommentEndpoint = '/student/comments/create';
  static const String deleteCommentEndpoint = '/student/comments/delete';

  // Profile
  static const String getProfileEndpoint = '/student/auth/getUser';
  static const String updateProfileEndpoint = '/student/profile/update';
  static const String getOtherUserProfileEndpoint = '/student/profile/getUser';

  // Space
  static const String getSpacePostsEndpoint = '/student/space/getPosts';
  static const String followSpaceEndpoint = '/student/space/follow';
  static const String unfollowSpaceEndpoint = '/student/space/unfollow';

  // Pagination
  static const int pageSize = 20;
}
```

---

## Provider Organization

Each service should have a corresponding provider for state management.

```dart
// features/xxx/providers/xxx_provider.dart

// Services
final xxxApiServiceProvider = Provider((ref) => ...);

// Data Providers
final xxxDataProvider = FutureProvider((ref) => ...);

// Searchable Providers
final xxxSearchProvider = FutureProvider.family((ref, query) => ...);

// State Providers
final xxxSelectedProvider = StateProvider((ref) => null);
```

---

## Error Handling

All API services should handle errors consistently:

```dart
Future<T> apiMethod() async {
  try {
    final response = await _dioClient.get(endpoint);
    return T.fromJson(response);
  } catch (e) {
    throw _handleException(e);
  }
}

ApiException _handleException(dynamic error) {
  if (error is ApiException) return error;
  
  if (error is DioException) {
    return ApiException(
      message: error.message ?? 'Network error',
      statusCode: error.response?.statusCode,
    );
  }
  
  return ApiException(
    message: 'Unknown error: $error',
    statusCode: null,
  );
}
```

---

## Models Organization

Store all models in `lib/models/`:

```
models/
├── auth_response.dart          # Login, token responses
├── community_response_model.dart # Communities, posts, comments
├── post_model.dart             # Post details
├── user_profile_model.dart     # User profile (create this)
├── notification_model.dart     # Notifications (create this)
├── search_model.dart           # Search results (create this)
└── exceptions.dart             # Error handling
```

---

## Implementation Checklist

### Auth Feature
- [x] Login API
- [x] Logout API
- [x] Get Current User
- [ ] Refresh Token (not fully implemented)
- [ ] Password Reset

### Community Feature
- [x] Get Communities
- [x] Get Community Details
- [x] Get Community Feeds
- [x] Create/Update/Delete Posts
- [x] Like/Unlike Posts
- [x] Get/Create Comments
- [ ] Delete Comments (partially done)
- [x] Follow/Unfollow Spaces
- [ ] Search Communities

### Profile Feature
- [x] Get User Profile
- [ ] Update Profile (needs full implementation)
- [ ] Get User Stats
- [ ] Notifications

### Future Features
- [ ] Search Feature
- [ ] Messaging
- [ ] Notifications
- [ ] Groups
- [ ] Courses

---

## API Response Types

### Paginated Response
```json
{
  "meta": { "total", "per_page", "current_page", ... },
  "data": [...]
}
```

### Array Response
```json
[...]
```

### Single Item Response
```json
{
  "id": 1,
  "name": "...",
  ...
}
```

### Success Response
```json
{
  "success": true,
  "message": "Operation successful"
}
```

---

## Best Practices

✅ Always include error handling  
✅ Use strongly-typed models (Freezed)  
✅ Document all methods with examples  
✅ Group related methods together  
✅ Use consistent naming conventions  
✅ Test all API methods  
✅ Handle token refresh automatically  
✅ Implement pagination support  
✅ Cache responses when appropriate  
✅ Show loading/error states in UI  

---

**Last Updated:** December 19, 2025

