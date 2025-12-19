import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int id,
    int? schoolId,
    int? userId,
    int? courseId,
    int? communityId,
    int? groupId,
    String? feedTxt,
    String? status,
    String? slug,
    String? title,
    String? activityType,
    @Default(0) int isPinned,
    String? fileType,
    List<PostFile>? files,
    @Default(0) int likeCount,
    @Default(0) int commentCount,
    @Default(0) int shareCount,
    @Default(0) int shareId,
    Map<String, dynamic>? metaData,
    String? createdAt,
    String? updatedAt,
    String? feedPrivacy,
    @Default(0) int isBackground,
    String? bgColor,
    int? pollId,
    int? lessonId,
    int? spaceId,
    int? videoId,
    int? streamId,
    int? blogId,
    String? scheduleDate,
    String? timezone,
    @Default(0) int isAnonymous,
    int? meetingId,
    int? sellerId,
    String? publishDate,
    int? coachingFeedId,
    @Default(false) bool isFeedEdit,
    String? name,
    String? pic,
    int? uid,
    @Default(0) int isPrivateChat,
    PostUser? user,
    dynamic streamDetails,
    dynamic poll,
    List<dynamic>? likeType,
    dynamic like,
    dynamic group,
    dynamic savedPosts,
    dynamic follow,
    List<Comment>? comments,
    PostMeta? meta,
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class PostFile with _$PostFile {
  const factory PostFile({
    String? fileLoc,
    String? originalName,
    String? extname,
    String? type,
    @Default(0) int size,
  }) = _PostFile;

  factory PostFile.fromJson(Map<String, dynamic> json) =>
      _$PostFileFromJson(json);
}

@freezed
class PostUser with _$PostUser {
  const factory PostUser({
    required int id,
    String? fullName,
    String? profilePic,
    @Default(0) int isPrivateChat,
    String? expireDate,
    String? status,
    String? pauseDate,
    String? userType,
    Map<String, dynamic>? meta,
  }) = _PostUser;

  factory PostUser.fromJson(Map<String, dynamic> json) =>
      _$PostUserFromJson(json);
}

@freezed
class PostMeta with _$PostMeta {
  const factory PostMeta({
    @Default(0) int views,
    dynamic giftedCoins,
  }) = _PostMeta;

  factory PostMeta.fromJson(Map<String, dynamic> json) =>
      _$PostMetaFromJson(json);
}

@freezed
class Comment with _$Comment {
  const factory Comment({
    required int id,
    int? postId,
    int? authorId,
    String? authorName,
    String? authorAvatar,
    String? content,
    String? createdAt,
  }) = _Comment;

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}

