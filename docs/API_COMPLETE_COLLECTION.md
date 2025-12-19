# 📚 COMPLETE API COLLECTION GUIDE

## API Base URL
```
https://ezyappteam.ezycourse.com/api/app
```

## 1. AUTHENTICATION ENDPOINTS

### Login
```
POST /student/auth/login
Body: { email, password }
Response: { type, token }
```

### Logout
```
POST /student/auth/logout
Headers: Authorization: Bearer {token}
```

### Refresh Token
```
POST /student/auth/refresh-token
Headers: Authorization: Bearer {token}
```

### Get Current User
```
GET /student/auth/getUser
Headers: Authorization: Bearer {token}
Response: User object with all profile details
```

---

## 2. COMMUNITY ENDPOINTS

### Get Enrolled Communities
```
GET /student/community/getEnrolledCommunityList?page=1&limit=20&str=null
Headers: Authorization: Bearer {token}
Response: { meta: { total, per_page, ... }, data: [Community] }
```

### Get Community Details
```
GET /teacher/community/getCommunityByCommunityIdV2/id={communityId}
Headers: Authorization: Bearer {token}
Response: { id, group_name, cover, profile_pic, meta, tab_settings, spaces }
```

### Get Community Feeds/Posts
```
GET /public/feeds/{communityId}?space_id={spaceId}&status=feed&more={token}
Headers: Authorization: Bearer {token}
Response: [Post] (array of posts)
```

### Get Tab Settings
```
GET /student/community/getTabSettings?community_id={id}
Headers: Authorization: Bearer {token}
Response: [TabSetting]
```

### Get Spaces
```
GET /student/community/getSpaces?community_id={id}
Headers: Authorization: Bearer {token}
Response: [Space]
```

---

## 3. POST/FEED ENDPOINTS

### Get Posts List
```
GET /student/posts/getList?page=1&limit=20
Headers: Authorization: Bearer {token}
Response: { meta, data: [Post] }
```

### Create Post
```
POST /student/posts/create
Headers: Authorization: Bearer {token}
Body: {
  community_id, 
  space_id, 
  feed_txt (content),
  file_type,
  bg_color (optional)
}
Response: Post object
```

### Update Post
```
POST /student/posts/update
Headers: Authorization: Bearer {token}
Body: { post_id, feed_txt }
Response: Post object
```

### Delete Post
```
POST /student/posts/delete
Headers: Authorization: Bearer {token}
Body: { post_id }
Response: { success: true }
```

### Like Post
```
POST /student/posts/like
Headers: Authorization: Bearer {token}
Body: { post_id }
Response: { success: true }
```

### Unlike Post
```
POST /student/posts/unlike
Headers: Authorization: Bearer {token}
Body: { post_id }
Response: { success: true }
```

---

## 4. COMMENTS ENDPOINTS

### Get Comments
```
GET /student/comments/getList?post_id={id}&page=1&limit=20
Headers: Authorization: Bearer {token}
Response: { data: [Comment] }
```

### Create Comment
```
POST /student/comments/create
Headers: Authorization: Bearer {token}
Body: { post_id, content }
Response: Comment object
```

### Delete Comment
```
POST /student/comments/delete
Headers: Authorization: Bearer {token}
Body: { comment_id }
Response: { success: true }
```

---

## 5. PROFILE ENDPOINTS

### Get Current User Profile
```
GET /student/auth/getUser
Headers: Authorization: Bearer {token}
Response: User object
```

### Update Profile
```
POST /student/profile/update
Headers: Authorization: Bearer {token}
Body: { full_name, bio, profile_pic, cover_pic, ... }
Response: User object
```

### Get Other User Profile
```
GET /student/profile/getUser?user_id={id}
Headers: Authorization: Bearer {token}
Response: User object
```

---

## 6. SPACE/CHANNEL ENDPOINTS

### Get Space Posts
```
GET /student/space/getPosts?space_id={id}&page=1&limit=20
Headers: Authorization: Bearer {token}
Response: [Post]
```

### Follow Space
```
POST /student/space/follow
Headers: Authorization: Bearer {token}
Body: { space_id }
Response: { success: true }
```

### Unfollow Space
```
POST /student/space/unfollow
Headers: Authorization: Bearer {token}
Body: { space_id }
Response: { success: true }
```

---

## 7. ADDITIONAL ENDPOINTS (Common)

### Search
```
GET /search?q={query}&type=community|post|user
Headers: Authorization: Bearer {token}
Response: { results: [] }
```

### Notifications
```
GET /notifications?page=1&limit=20
POST /notifications/{id}/read
DELETE /notifications/{id}
```

### Messaging
```
GET /messages?user_id={id}
POST /messages/send
Headers: Authorization: Bearer {token}
Body: { recipient_id, message }
```

---

## Query Parameters

| Parameter | Type | Required | Example |
|-----------|------|----------|---------|
| page | int | No | 1 |
| limit | int | No | 20 |
| space_id | string | Yes (feeds) | "2718" |
| status | string | Yes (feeds) | "feed" |
| more | string | No | "pagination_token" |
| str | string | No | "search_term" |
| community_id | int | Yes (some) | 1505 |
| user_id | int | No | 653821 |

---

## Response Format

### Success Response (Paginated)
```json
{
  "meta": {
    "total": 100,
    "per_page": 20,
    "current_page": 1,
    "last_page": 5,
    "first_page": 1,
    "first_page_url": "/?page=1",
    "last_page_url": "/?page=5",
    "next_page_url": "/?page=2",
    "previous_page_url": null
  },
  "data": [...]
}
```

### Success Response (Array)
```json
[
  { ...item },
  { ...item }
]
```

### Error Response
```json
{
  "success": false,
  "message": "Error description",
  "error": "error_code"
}
```

---

## Authentication

All endpoints (except login) require:
```
Headers: {
  "Authorization": "Bearer {token}",
  "Content-Type": "application/json"
}
```

---

## Rate Limiting

- Limit: 100 requests per minute
- Headers: X-RateLimit-Limit, X-RateLimit-Remaining

---

## Status Codes

| Code | Meaning |
|------|---------|
| 200 | Success |
| 201 | Created |
| 400 | Bad Request |
| 401 | Unauthorized |
| 403 | Forbidden |
| 404 | Not Found |
| 429 | Too Many Requests |
| 500 | Server Error |

---

**Last Updated:** December 19, 2025

