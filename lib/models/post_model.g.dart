// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
  id: (json['id'] as num).toInt(),
  schoolId: (json['schoolId'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  courseId: (json['courseId'] as num?)?.toInt(),
  communityId: (json['communityId'] as num?)?.toInt(),
  groupId: (json['groupId'] as num?)?.toInt(),
  feedTxt: json['feedTxt'] as String?,
  status: json['status'] as String?,
  slug: json['slug'] as String?,
  title: json['title'] as String?,
  activityType: json['activityType'] as String?,
  isPinned: (json['isPinned'] as num?)?.toInt() ?? 0,
  fileType: json['fileType'] as String?,
  files: (json['files'] as List<dynamic>?)
      ?.map((e) => PostFile.fromJson(e as Map<String, dynamic>))
      .toList(),
  likeCount: (json['likeCount'] as num?)?.toInt() ?? 0,
  commentCount: (json['commentCount'] as num?)?.toInt() ?? 0,
  shareCount: (json['shareCount'] as num?)?.toInt() ?? 0,
  shareId: (json['shareId'] as num?)?.toInt() ?? 0,
  metaData: json['metaData'] as Map<String, dynamic>?,
  createdAt: json['createdAt'] as String?,
  updatedAt: json['updatedAt'] as String?,
  feedPrivacy: json['feedPrivacy'] as String?,
  isBackground: (json['isBackground'] as num?)?.toInt() ?? 0,
  bgColor: json['bgColor'] as String?,
  pollId: (json['pollId'] as num?)?.toInt(),
  lessonId: (json['lessonId'] as num?)?.toInt(),
  spaceId: (json['spaceId'] as num?)?.toInt(),
  videoId: (json['videoId'] as num?)?.toInt(),
  streamId: (json['streamId'] as num?)?.toInt(),
  blogId: (json['blogId'] as num?)?.toInt(),
  scheduleDate: json['scheduleDate'] as String?,
  timezone: json['timezone'] as String?,
  isAnonymous: (json['isAnonymous'] as num?)?.toInt() ?? 0,
  meetingId: (json['meetingId'] as num?)?.toInt(),
  sellerId: (json['sellerId'] as num?)?.toInt(),
  publishDate: json['publishDate'] as String?,
  coachingFeedId: (json['coachingFeedId'] as num?)?.toInt(),
  isFeedEdit: json['isFeedEdit'] as bool? ?? false,
  name: json['name'] as String?,
  pic: json['pic'] as String?,
  uid: (json['uid'] as num?)?.toInt(),
  isPrivateChat: (json['isPrivateChat'] as num?)?.toInt() ?? 0,
  user: json['user'] == null
      ? null
      : PostUser.fromJson(json['user'] as Map<String, dynamic>),
  streamDetails: json['streamDetails'],
  poll: json['poll'],
  likeType: json['likeType'] as List<dynamic>?,
  like: json['like'],
  group: json['group'],
  savedPosts: json['savedPosts'],
  follow: json['follow'],
  comments: (json['comments'] as List<dynamic>?)
      ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
      .toList(),
  meta: json['meta'] == null
      ? null
      : PostMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schoolId': instance.schoolId,
      'userId': instance.userId,
      'courseId': instance.courseId,
      'communityId': instance.communityId,
      'groupId': instance.groupId,
      'feedTxt': instance.feedTxt,
      'status': instance.status,
      'slug': instance.slug,
      'title': instance.title,
      'activityType': instance.activityType,
      'isPinned': instance.isPinned,
      'fileType': instance.fileType,
      'files': instance.files,
      'likeCount': instance.likeCount,
      'commentCount': instance.commentCount,
      'shareCount': instance.shareCount,
      'shareId': instance.shareId,
      'metaData': instance.metaData,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'feedPrivacy': instance.feedPrivacy,
      'isBackground': instance.isBackground,
      'bgColor': instance.bgColor,
      'pollId': instance.pollId,
      'lessonId': instance.lessonId,
      'spaceId': instance.spaceId,
      'videoId': instance.videoId,
      'streamId': instance.streamId,
      'blogId': instance.blogId,
      'scheduleDate': instance.scheduleDate,
      'timezone': instance.timezone,
      'isAnonymous': instance.isAnonymous,
      'meetingId': instance.meetingId,
      'sellerId': instance.sellerId,
      'publishDate': instance.publishDate,
      'coachingFeedId': instance.coachingFeedId,
      'isFeedEdit': instance.isFeedEdit,
      'name': instance.name,
      'pic': instance.pic,
      'uid': instance.uid,
      'isPrivateChat': instance.isPrivateChat,
      'user': instance.user,
      'streamDetails': instance.streamDetails,
      'poll': instance.poll,
      'likeType': instance.likeType,
      'like': instance.like,
      'group': instance.group,
      'savedPosts': instance.savedPosts,
      'follow': instance.follow,
      'comments': instance.comments,
      'meta': instance.meta,
    };

_$PostFileImpl _$$PostFileImplFromJson(Map<String, dynamic> json) =>
    _$PostFileImpl(
      fileLoc: json['fileLoc'] as String?,
      originalName: json['originalName'] as String?,
      extname: json['extname'] as String?,
      type: json['type'] as String?,
      size: (json['size'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$PostFileImplToJson(_$PostFileImpl instance) =>
    <String, dynamic>{
      'fileLoc': instance.fileLoc,
      'originalName': instance.originalName,
      'extname': instance.extname,
      'type': instance.type,
      'size': instance.size,
    };

_$PostUserImpl _$$PostUserImplFromJson(Map<String, dynamic> json) =>
    _$PostUserImpl(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String?,
      profilePic: json['profilePic'] as String?,
      isPrivateChat: (json['isPrivateChat'] as num?)?.toInt() ?? 0,
      expireDate: json['expireDate'] as String?,
      status: json['status'] as String?,
      pauseDate: json['pauseDate'] as String?,
      userType: json['userType'] as String?,
      meta: json['meta'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$PostUserImplToJson(_$PostUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'profilePic': instance.profilePic,
      'isPrivateChat': instance.isPrivateChat,
      'expireDate': instance.expireDate,
      'status': instance.status,
      'pauseDate': instance.pauseDate,
      'userType': instance.userType,
      'meta': instance.meta,
    };

_$PostMetaImpl _$$PostMetaImplFromJson(Map<String, dynamic> json) =>
    _$PostMetaImpl(
      views: (json['views'] as num?)?.toInt() ?? 0,
      giftedCoins: json['giftedCoins'],
    );

Map<String, dynamic> _$$PostMetaImplToJson(_$PostMetaImpl instance) =>
    <String, dynamic>{
      'views': instance.views,
      'giftedCoins': instance.giftedCoins,
    };

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      id: (json['id'] as num).toInt(),
      postId: (json['postId'] as num?)?.toInt(),
      authorId: (json['authorId'] as num?)?.toInt(),
      authorName: json['authorName'] as String?,
      authorAvatar: json['authorAvatar'] as String?,
      content: json['content'] as String?,
      createdAt: json['createdAt'] as String?,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'postId': instance.postId,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'authorAvatar': instance.authorAvatar,
      'content': instance.content,
      'createdAt': instance.createdAt,
    };
