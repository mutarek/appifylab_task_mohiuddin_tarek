# 📋 QUICK API REFERENCE

## Base URL
```
https://ezyappteam.ezycourse.com/api/app
```

## Authentication (No Token Required)

| Method | Endpoint | Body |
|--------|----------|------|
| POST | `/student/auth/login` | `{email, password}` |

## Authenticated Endpoints (All require `Authorization: Bearer {token}`)

### User & Auth
| Method | Endpoint | Purpose |
|--------|----------|---------|
| GET | `/student/auth/getUser` | Get current user profile |
| POST | `/student/auth/logout` | Logout |
| POST | `/student/auth/refresh-token` | Refresh auth token |

### Communities
| Method | Endpoint | Purpose | Params |
|--------|----------|---------|--------|
| GET | `/student/community/getEnrolledCommunityList` | Get all communities | `page`, `limit`, `str` |
| GET | `/teacher/community/getCommunityByCommunityIdV2/id={id}` | Get community details | Path: `id` |
| GET | `/public/feeds/{id}` | Get community feeds | `space_id`, `status`, `more` |
| GET | `/student/community/getTabSettings` | Get tab settings | `community_id` |
| GET | `/student/community/getSpaces` | Get spaces | `community_id` |

### Posts/Feeds
| Method | Endpoint | Purpose | Body |
|--------|----------|---------|------|
| GET | `/student/posts/getList` | Get all posts | Query: `page`, `limit` |
| POST | `/student/posts/create` | Create post | `{community_id, space_id, feed_txt, file_type, bg_color}` |
| POST | `/student/posts/update` | Update post | `{post_id, feed_txt}` |
| POST | `/student/posts/delete` | Delete post | `{post_id}` |
| POST | `/student/posts/like` | Like post | `{post_id}` |
| POST | `/student/posts/unlike` | Unlike post | `{post_id}` |

### Comments
| Method | Endpoint | Purpose | Body/Params |
|--------|----------|---------|-------------|
| GET | `/student/comments/getList` | Get comments | Query: `post_id`, `page`, `limit` |
| POST | `/student/comments/create` | Add comment | `{post_id, content}` |
| POST | `/student/comments/delete` | Delete comment | `{comment_id}` |

### Profile
| Method | Endpoint | Purpose | Params |
|--------|----------|---------|--------|
| POST | `/student/profile/update` | Update profile | `{full_name, bio, profile_pic, ...}` |
| GET | `/student/profile/getUser` | Get other user profile | `user_id` |

### Spaces/Channels
| Method | Endpoint | Purpose | Body |
|--------|----------|---------|------|
| GET | `/student/space/getPosts` | Get space posts | Query: `space_id`, `page` |
| POST | `/student/space/follow` | Follow space | `{space_id}` |
| POST | `/student/space/unfollow` | Unfollow space | `{space_id}` |

---

## Common Query Parameters

```
page         : int        (pagination, default: 1)
limit        : int        (items per page, default: 20)
space_id     : string/int (filter by space)
community_id : int        (filter by community)
user_id      : int        (filter by user)
status       : string     (filter status, e.g., "feed")
more         : string     (pagination token)
str          : string     (search string)
```

---

## Response Codes

```
200  ✅ Success
201  ✅ Created
400  ❌ Bad Request
401  ❌ Unauthorized (Invalid/Missing token)
403  ❌ Forbidden
404  ❌ Not Found
429  ❌ Too Many Requests
500  ❌ Server Error
```

---

## Headers (For All Authenticated Requests)

```
Authorization: Bearer {token}
Content-Type: application/json
Accept: application/json
```

---

## Data Types

### Community
```json
{
  "id": 1505,
  "title": "Community Name",
  "total_members": 11,
  "total_feeds": 293,
  "status": "ACTIVE|EXPIRED"
}
```

### Post
```json
{
  "id": 354962,
  "title": "Post Title",
  "feed_txt": "Post content",
  "user": { "id": 123, "full_name": "Name", "profile_pic": "url" },
  "like_count": 5,
  "comment_count": 2,
  "created_at": "2025-07-13T10:50:07Z"
}
```

### User
```json
{
  "id": 653821,
  "full_name": "User Name",
  "email": "user@test.io",
  "profile_pic": "url",
  "status": "ACTIVE",
  "user_type": "STUDENT"
}
```

### Comment
```json
{
  "id": 123,
  "content": "Comment text",
  "user": { "id": 123, "full_name": "Name" },
  "created_at": "2025-07-13T10:50:07Z"
}
```

---

## Pagination Response

```json
{
  "meta": {
    "total": 100,
    "per_page": 20,
    "current_page": 1,
    "last_page": 5,
    "first_page": 1,
    "next_page_url": "/?page=2",
    "previous_page_url": null
  },
  "data": [...]
}
```

---

## Example cURL Commands

### Login
```bash
curl -X POST https://ezyappteam.ezycourse.com/api/app/student/auth/login \
  -H "Content-Type: application/json" \
  -d '{"email":"user@test.io","password":"password"}'
```

### Get Communities
```bash
curl -X GET "https://ezyappteam.ezycourse.com/api/app/student/community/getEnrolledCommunityList?page=1&limit=20" \
  -H "Authorization: Bearer YOUR_TOKEN"
```

### Create Post
```bash
curl -X POST https://ezyappteam.ezycourse.com/api/app/student/posts/create \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"community_id":"1505","space_id":"2718","feed_txt":"Hello","file_type":"text"}'
```

### Like Post
```bash
curl -X POST https://ezyappteam.ezycourse.com/api/app/student/posts/like \
  -H "Authorization: Bearer YOUR_TOKEN" \
  -H "Content-Type: application/json" \
  -d '{"post_id":"354962"}'
```

---

## Rate Limits

- **Limit**: 100 requests per minute
- **Check Headers**: `X-RateLimit-Limit`, `X-RateLimit-Remaining`

---

## Error Responses

```json
{
  "success": false,
  "message": "Error description",
  "error": "error_code"
}
```

---

**Postman Collection**: https://api.postman.com/collections/40537345-bdbd9e78-e5ec-4625-8fe8-0528f5f94d1a

**Last Updated**: December 19, 2025

