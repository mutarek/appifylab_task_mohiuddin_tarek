# API Documentation Index

## Overview

This document serves as the index for all API-related documentation in the Community App project.

## 📚 Documentation Files

### 1. Main API Reference
- **File:** `API_DOCUMENTATION.md`
- **Content:**
  - Complete API endpoint listing
  - Request/response formats
  - Authentication requirements
  - Error codes and handling
  - Rate limiting information

### 2. API Architecture Overview
- **File:** `API_ARCHITECTURE_OVERVIEW.md`
- **Content:**
  - API design patterns
  - Endpoint organization
  - Versioning strategy
  - Security implementation
  - Data model relationships

### 3. Implementation Guide
- **File:** `API_IMPLEMENTATION_GUIDE.md`
- **Content:**
  - Step-by-step integration guide
  - Code examples
  - Common use cases
  - Best practices
  - Troubleshooting

## 🔐 Security

All API communication uses:
- HTTPS protocol
- Bearer token authentication
- Input validation
- Error sanitization

## 📋 API Endpoints Summary

### Authentication
- `POST /student/auth/login` - User login
- `POST /student/auth/logout` - User logout
- `POST /student/auth/refresh-token` - Refresh token

### Communities
- `GET /student/community/getEnrolledCommunityList` - List communities
- `GET /teacher/community/getCommunityByCommunityIdV2/{id}` - Community details
- `GET /public/feeds/{communityId}` - Get posts

### Posts
- `POST /student/posts/create` - Create post
- `POST /student/posts/update` - Update post
- `POST /student/posts/delete` - Delete post
- `POST /student/posts/like` - Like post
- `POST /student/posts/unlike` - Unlike post

### Comments
- `GET /student/comments/getList` - Get comments
- `POST /student/comments/create` - Add comment
- `POST /student/comments/delete` - Delete comment

### Profile
- `GET /student/auth/getUser` - Get user profile

## 🔗 Important Links

### Postman Collection
- Note: Postman collection is available but API credentials should not be committed to repository
- Recommendation: Keep API keys in environment variables or secure vaults

### Project Repository
- Path: Community App Flutter Project

## 📞 Support

For API-related questions:
1. Review the API_DOCUMENTATION.md file
2. Check the implementation guide
3. Review the architecture overview
4. Contact the API development team

---

**Last Updated:** December 20, 2025  
**Status:** Production Ready

