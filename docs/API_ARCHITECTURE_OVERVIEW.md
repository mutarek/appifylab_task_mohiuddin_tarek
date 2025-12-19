# 🗂️ API SERVICES ARCHITECTURE OVERVIEW

## Complete API Organization

```
┌─────────────────────────────────────────────────────────────────┐
│                    API BASE URL                                 │
│        https://ezyappteam.ezycourse.com/api/app                │
└─────────────────────────────────────────────────────────────────┘
                              │
                ┌─────────────┼─────────────┐
                ▼             ▼             ▼
            PUBLIC        STUDENT         TEACHER
          (No Auth)      (With Auth)     (With Auth)
            │              │               │
            ├─ Login       ├─ Profile     └─ Community
            │              ├─ Community     Details
            └─ Feeds       ├─ Posts        
                          ├─ Comments     
                          ├─ Spaces      
                          └─ Notifications
```

---

## Feature-to-Service Mapping

### 🔐 AUTH FEATURE
```
features/auth/
├── services/
│   └── auth_api_service.dart
│       ├── login(email, password)
│       ├── logout()
│       ├── refreshToken()
│       └── getCurrentUser()
│
├── providers/
│   └── auth_provider.dart
│       ├── authProvider (state)
│       ├── authLoadingProvider
│       └── authErrorProvider
│
└── screens/
    ├── login_screen.dart
    └── splash_screen.dart
```

**Endpoints Used:**
- POST `/student/auth/login`
- POST `/student/auth/logout`
- POST `/student/auth/refresh-token`
- GET `/student/auth/getUser`

---

### 🏘️ COMMUNITY FEATURE
```
features/community/
├── services/
│   └── community_api_service.dart
│       ├── getCommunities()
│       ├── getCommunityDetails(id)
│       ├── getFeeds(communityId, spaceId)
│       ├── createPost()
│       ├── updatePost()
│       ├── deletePost()
│       ├── likePost()
│       ├── unlikePost()
│       ├── getComments()
│       ├── addComment()
│       ├── deleteComment()
│       ├── followSpace()
│       ├── unfollowSpace()
│       ├── getSpacePosts()
│       └── getTabSettings()
│
├── providers/
│   └── community_provider.dart
│       ├── communitiesProvider
│       ├── searchCommunitiesProvider(query)
│       ├── communityDetailsProvider(id)
│       ├── postsProvider((communityId, spaceId))
│       ├── moreFeedsProvider((communityId, spaceId, more))
│       └── commentsProvider(postId)
│
└── screens/
    ├── communities_list_screen.dart
    ├── community_details_screen.dart
    └── community_feeds_screen.dart
```

**Endpoints Used:**
- GET `/student/community/getEnrolledCommunityList`
- GET `/teacher/community/getCommunityByCommunityIdV2/id={id}`
- GET `/public/feeds/{id}`
- POST `/student/posts/create`
- POST `/student/posts/update`
- POST `/student/posts/delete`
- POST `/student/posts/like`
- POST `/student/posts/unlike`
- GET `/student/comments/getList`
- POST `/student/comments/create`
- POST `/student/comments/delete`
- POST `/student/space/follow`
- POST `/student/space/unfollow`
- GET `/student/space/getPosts`
- GET `/student/community/getTabSettings`

---

### 👤 PROFILE FEATURE
```
features/profile/
├── services/
│   └── profile_api_service.dart
│       ├── getUserProfile()
│       ├── getUserProfileById(userId)
│       └── updateProfile(...)
│
├── providers/
│   └── profile_provider.dart
│       ├── currentUserProfileProvider
│       └── userProfileProvider(userId)
│
└── screens/
    └── profile_screen.dart
```

**Endpoints Used:**
- GET `/student/auth/getUser`
- GET `/student/profile/getUser`
- POST `/student/profile/update`

---

### 🏠 HOME FEATURE
```
features/home/
└── screens/
    └── home_screen.dart
```

**No direct API calls** - Uses providers from other features

---

## Core Layer Structure

```
core/
├── services/
│   ├── dio_client.dart
│   │   └── Handles all HTTP requests
│   │       ├── Interceptors
│   │       ├── Error handling
│   │       ├── Logging
│   │       └── Token management
│   │
│   └── secure_storage_service.dart
│       └── Manages secure token storage
│
└── providers/
    └── service_providers.dart
        ├── secureStorageProvider
        ├── dioClientProvider
        ├── authApiServiceProvider
        ├── communityApiServiceProvider
        └── profileApiServiceProvider
```

---

## Data Flow Diagram

```
┌─────────────────────────────────────────────────────────────────┐
│                          UI (Screens)                            │
│              (CommunitiesListScreen, etc.)                      │
└─────────────────────────────────────────────────────────────────┘
                              │ watches
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                       Providers (Riverpod)                       │
│    (communitiesProvider, postsProvider, etc.)                   │
└─────────────────────────────────────────────────────────────────┘
                              │ calls
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                    API Services                                  │
│      (CommunityApiService, AuthApiService, etc.)               │
└─────────────────────────────────────────────────────────────────┘
                              │ uses
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                 Core Services                                    │
│          (DioClient, SecureStorageService)                      │
└─────────────────────────────────────────────────────────────────┘
                              │ calls
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                      Backend API                                 │
│      https://ezyappteam.ezycourse.com/api/app                  │
└─────────────────────────────────────────────────────────────────┘
```

---

## Request/Response Flow Example

### Getting Communities

```
1. User opens CommunitiesListScreen
                    ↓
2. Screen watches communitiesProvider
                    ↓
3. Provider calls communityApiService.getCommunities()
                    ↓
4. Service calls dioClient.get('/student/community/...')
                    ↓
5. DioClient makes HTTP request with auth token
                    ↓
6. Backend returns CommunitiesResponse
                    ↓
7. Service parses response to CommunitiesResponse model
                    ↓
8. Provider emits AsyncValue.data(communities)
                    ↓
9. Screen receives data and displays ListView
```

---

## Error Handling Flow

```
API Call
  ↓
Error Occurs
  ↓
DioClient catches and logs
  ↓
Converts to ApiException
  ↓
Service throws ApiException
  ↓
Provider catches and emits AsyncValue.error
  ↓
Screen shows error state/message
```

---

## Token Management

```
Login Success
  ↓
Backend returns token
  ↓
AuthService saves to SecureStorage
  ↓
DioClient retrieves on each request
  ↓
Adds to Authorization header
  ↓
                    Token Expired
                         ↓
                    DioClient detects 401
                         ↓
                    Calls refresh endpoint
                         ↓
                    Gets new token
                         ↓
                    Saves and retries request
```

---

## API Endpoint Statistics

| Category | Count | Endpoints |
|----------|-------|-----------|
| Auth | 4 | login, logout, refresh, getUser |
| Community | 5 | getCommunities, getDetails, getFeeds, getTabs, getSpaces |
| Posts | 6 | getList, create, update, delete, like, unlike |
| Comments | 3 | getList, create, delete |
| Profile | 3 | getUser, getUserById, update |
| Spaces | 3 | getPosts, follow, unfollow |
| **TOTAL** | **24** | **Main API calls** |

---

## Implementation Status

| Feature | Status | Progress |
|---------|--------|----------|
| Auth | ✅ Complete | 100% |
| Community Listing | ✅ Complete | 100% |
| Community Details | ✅ Complete | 100% |
| Feeds/Posts | ✅ Complete | 100% |
| Comments | ✅ Complete | 100% |
| Like/Unlike | ✅ Complete | 100% |
| Follow/Unfollow Spaces | ✅ Complete | 100% |
| Profile | ⏳ Partial | 60% |
| Search | ⏳ Not Started | 0% |
| Messaging | ⏳ Not Started | 0% |
| Notifications | ⏳ Not Started | 0% |

---

## Best Practices Implemented

✅ Feature-based architecture  
✅ Separation of concerns (services, providers, screens)  
✅ Core layer for shared services  
✅ Freezed models for immutability  
✅ Error handling with custom exceptions  
✅ Loading states with Riverpod async  
✅ Token-based authentication  
✅ Secure token storage  
✅ Request/response logging  
✅ Type-safe API calls  

---

## Next Steps to Implement

1. **Search Feature** - Add search service and provider
2. **Messaging** - Implement chat/messaging feature
3. **Notifications** - Add notification service
4. **Offline Support** - Add caching layer
5. **File Upload** - Handle media uploads
6. **Pagination Enhancement** - Infinite scroll support
7. **Real-time Updates** - WebSocket support
8. **Advanced Filtering** - More search options

---

**Architecture Follows:** Clean Architecture + Feature-Based Structure  
**State Management:** Riverpod  
**HTTP Client:** Dio  
**Data Serialization:** Freezed + JSON Serializable  
**Last Updated:** December 19, 2025

