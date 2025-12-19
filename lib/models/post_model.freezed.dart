// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  int get id => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get courseId => throw _privateConstructorUsedError;
  int? get communityId => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;
  String? get feedTxt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get activityType => throw _privateConstructorUsedError;
  int get isPinned => throw _privateConstructorUsedError;
  String? get fileType => throw _privateConstructorUsedError;
  List<PostFile>? get files => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get shareCount => throw _privateConstructorUsedError;
  int get shareId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get metaData => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get feedPrivacy => throw _privateConstructorUsedError;
  int get isBackground => throw _privateConstructorUsedError;
  String? get bgColor => throw _privateConstructorUsedError;
  int? get pollId => throw _privateConstructorUsedError;
  int? get lessonId => throw _privateConstructorUsedError;
  int? get spaceId => throw _privateConstructorUsedError;
  int? get videoId => throw _privateConstructorUsedError;
  int? get streamId => throw _privateConstructorUsedError;
  int? get blogId => throw _privateConstructorUsedError;
  String? get scheduleDate => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  int get isAnonymous => throw _privateConstructorUsedError;
  int? get meetingId => throw _privateConstructorUsedError;
  int? get sellerId => throw _privateConstructorUsedError;
  String? get publishDate => throw _privateConstructorUsedError;
  int? get coachingFeedId => throw _privateConstructorUsedError;
  bool get isFeedEdit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  int? get uid => throw _privateConstructorUsedError;
  int get isPrivateChat => throw _privateConstructorUsedError;
  PostUser? get user => throw _privateConstructorUsedError;
  dynamic get streamDetails => throw _privateConstructorUsedError;
  dynamic get poll => throw _privateConstructorUsedError;
  List<dynamic>? get likeType => throw _privateConstructorUsedError;
  dynamic get like => throw _privateConstructorUsedError;
  dynamic get group => throw _privateConstructorUsedError;
  dynamic get savedPosts => throw _privateConstructorUsedError;
  dynamic get follow => throw _privateConstructorUsedError;
  List<Comment>? get comments => throw _privateConstructorUsedError;
  PostMeta? get meta => throw _privateConstructorUsedError;

  /// Serializes this Post to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call({
    int id,
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
    int isPinned,
    String? fileType,
    List<PostFile>? files,
    int likeCount,
    int commentCount,
    int shareCount,
    int shareId,
    Map<String, dynamic>? metaData,
    String? createdAt,
    String? updatedAt,
    String? feedPrivacy,
    int isBackground,
    String? bgColor,
    int? pollId,
    int? lessonId,
    int? spaceId,
    int? videoId,
    int? streamId,
    int? blogId,
    String? scheduleDate,
    String? timezone,
    int isAnonymous,
    int? meetingId,
    int? sellerId,
    String? publishDate,
    int? coachingFeedId,
    bool isFeedEdit,
    String? name,
    String? pic,
    int? uid,
    int isPrivateChat,
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
  });

  $PostUserCopyWith<$Res>? get user;
  $PostMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schoolId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? communityId = freezed,
    Object? groupId = freezed,
    Object? feedTxt = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? activityType = freezed,
    Object? isPinned = null,
    Object? fileType = freezed,
    Object? files = freezed,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? shareCount = null,
    Object? shareId = null,
    Object? metaData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedPrivacy = freezed,
    Object? isBackground = null,
    Object? bgColor = freezed,
    Object? pollId = freezed,
    Object? lessonId = freezed,
    Object? spaceId = freezed,
    Object? videoId = freezed,
    Object? streamId = freezed,
    Object? blogId = freezed,
    Object? scheduleDate = freezed,
    Object? timezone = freezed,
    Object? isAnonymous = null,
    Object? meetingId = freezed,
    Object? sellerId = freezed,
    Object? publishDate = freezed,
    Object? coachingFeedId = freezed,
    Object? isFeedEdit = null,
    Object? name = freezed,
    Object? pic = freezed,
    Object? uid = freezed,
    Object? isPrivateChat = null,
    Object? user = freezed,
    Object? streamDetails = freezed,
    Object? poll = freezed,
    Object? likeType = freezed,
    Object? like = freezed,
    Object? group = freezed,
    Object? savedPosts = freezed,
    Object? follow = freezed,
    Object? comments = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            schoolId: freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                      as int?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            courseId: freezed == courseId
                ? _value.courseId
                : courseId // ignore: cast_nullable_to_non_nullable
                      as int?,
            communityId: freezed == communityId
                ? _value.communityId
                : communityId // ignore: cast_nullable_to_non_nullable
                      as int?,
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as int?,
            feedTxt: freezed == feedTxt
                ? _value.feedTxt
                : feedTxt // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            activityType: freezed == activityType
                ? _value.activityType
                : activityType // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPinned: null == isPinned
                ? _value.isPinned
                : isPinned // ignore: cast_nullable_to_non_nullable
                      as int,
            fileType: freezed == fileType
                ? _value.fileType
                : fileType // ignore: cast_nullable_to_non_nullable
                      as String?,
            files: freezed == files
                ? _value.files
                : files // ignore: cast_nullable_to_non_nullable
                      as List<PostFile>?,
            likeCount: null == likeCount
                ? _value.likeCount
                : likeCount // ignore: cast_nullable_to_non_nullable
                      as int,
            commentCount: null == commentCount
                ? _value.commentCount
                : commentCount // ignore: cast_nullable_to_non_nullable
                      as int,
            shareCount: null == shareCount
                ? _value.shareCount
                : shareCount // ignore: cast_nullable_to_non_nullable
                      as int,
            shareId: null == shareId
                ? _value.shareId
                : shareId // ignore: cast_nullable_to_non_nullable
                      as int,
            metaData: freezed == metaData
                ? _value.metaData
                : metaData // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            feedPrivacy: freezed == feedPrivacy
                ? _value.feedPrivacy
                : feedPrivacy // ignore: cast_nullable_to_non_nullable
                      as String?,
            isBackground: null == isBackground
                ? _value.isBackground
                : isBackground // ignore: cast_nullable_to_non_nullable
                      as int,
            bgColor: freezed == bgColor
                ? _value.bgColor
                : bgColor // ignore: cast_nullable_to_non_nullable
                      as String?,
            pollId: freezed == pollId
                ? _value.pollId
                : pollId // ignore: cast_nullable_to_non_nullable
                      as int?,
            lessonId: freezed == lessonId
                ? _value.lessonId
                : lessonId // ignore: cast_nullable_to_non_nullable
                      as int?,
            spaceId: freezed == spaceId
                ? _value.spaceId
                : spaceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            videoId: freezed == videoId
                ? _value.videoId
                : videoId // ignore: cast_nullable_to_non_nullable
                      as int?,
            streamId: freezed == streamId
                ? _value.streamId
                : streamId // ignore: cast_nullable_to_non_nullable
                      as int?,
            blogId: freezed == blogId
                ? _value.blogId
                : blogId // ignore: cast_nullable_to_non_nullable
                      as int?,
            scheduleDate: freezed == scheduleDate
                ? _value.scheduleDate
                : scheduleDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            timezone: freezed == timezone
                ? _value.timezone
                : timezone // ignore: cast_nullable_to_non_nullable
                      as String?,
            isAnonymous: null == isAnonymous
                ? _value.isAnonymous
                : isAnonymous // ignore: cast_nullable_to_non_nullable
                      as int,
            meetingId: freezed == meetingId
                ? _value.meetingId
                : meetingId // ignore: cast_nullable_to_non_nullable
                      as int?,
            sellerId: freezed == sellerId
                ? _value.sellerId
                : sellerId // ignore: cast_nullable_to_non_nullable
                      as int?,
            publishDate: freezed == publishDate
                ? _value.publishDate
                : publishDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            coachingFeedId: freezed == coachingFeedId
                ? _value.coachingFeedId
                : coachingFeedId // ignore: cast_nullable_to_non_nullable
                      as int?,
            isFeedEdit: null == isFeedEdit
                ? _value.isFeedEdit
                : isFeedEdit // ignore: cast_nullable_to_non_nullable
                      as bool,
            name: freezed == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String?,
            pic: freezed == pic
                ? _value.pic
                : pic // ignore: cast_nullable_to_non_nullable
                      as String?,
            uid: freezed == uid
                ? _value.uid
                : uid // ignore: cast_nullable_to_non_nullable
                      as int?,
            isPrivateChat: null == isPrivateChat
                ? _value.isPrivateChat
                : isPrivateChat // ignore: cast_nullable_to_non_nullable
                      as int,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as PostUser?,
            streamDetails: freezed == streamDetails
                ? _value.streamDetails
                : streamDetails // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            poll: freezed == poll
                ? _value.poll
                : poll // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            likeType: freezed == likeType
                ? _value.likeType
                : likeType // ignore: cast_nullable_to_non_nullable
                      as List<dynamic>?,
            like: freezed == like
                ? _value.like
                : like // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            group: freezed == group
                ? _value.group
                : group // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            savedPosts: freezed == savedPosts
                ? _value.savedPosts
                : savedPosts // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            follow: freezed == follow
                ? _value.follow
                : follow // ignore: cast_nullable_to_non_nullable
                      as dynamic,
            comments: freezed == comments
                ? _value.comments
                : comments // ignore: cast_nullable_to_non_nullable
                      as List<Comment>?,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as PostMeta?,
          )
          as $Val,
    );
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $PostUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PostMetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $PostMetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
    _$PostImpl value,
    $Res Function(_$PostImpl) then,
  ) = __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
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
    int isPinned,
    String? fileType,
    List<PostFile>? files,
    int likeCount,
    int commentCount,
    int shareCount,
    int shareId,
    Map<String, dynamic>? metaData,
    String? createdAt,
    String? updatedAt,
    String? feedPrivacy,
    int isBackground,
    String? bgColor,
    int? pollId,
    int? lessonId,
    int? spaceId,
    int? videoId,
    int? streamId,
    int? blogId,
    String? scheduleDate,
    String? timezone,
    int isAnonymous,
    int? meetingId,
    int? sellerId,
    String? publishDate,
    int? coachingFeedId,
    bool isFeedEdit,
    String? name,
    String? pic,
    int? uid,
    int isPrivateChat,
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
  });

  @override
  $PostUserCopyWith<$Res>? get user;
  @override
  $PostMetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
    : super(_value, _then);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? schoolId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? communityId = freezed,
    Object? groupId = freezed,
    Object? feedTxt = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? activityType = freezed,
    Object? isPinned = null,
    Object? fileType = freezed,
    Object? files = freezed,
    Object? likeCount = null,
    Object? commentCount = null,
    Object? shareCount = null,
    Object? shareId = null,
    Object? metaData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedPrivacy = freezed,
    Object? isBackground = null,
    Object? bgColor = freezed,
    Object? pollId = freezed,
    Object? lessonId = freezed,
    Object? spaceId = freezed,
    Object? videoId = freezed,
    Object? streamId = freezed,
    Object? blogId = freezed,
    Object? scheduleDate = freezed,
    Object? timezone = freezed,
    Object? isAnonymous = null,
    Object? meetingId = freezed,
    Object? sellerId = freezed,
    Object? publishDate = freezed,
    Object? coachingFeedId = freezed,
    Object? isFeedEdit = null,
    Object? name = freezed,
    Object? pic = freezed,
    Object? uid = freezed,
    Object? isPrivateChat = null,
    Object? user = freezed,
    Object? streamDetails = freezed,
    Object? poll = freezed,
    Object? likeType = freezed,
    Object? like = freezed,
    Object? group = freezed,
    Object? savedPosts = freezed,
    Object? follow = freezed,
    Object? comments = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _$PostImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        schoolId: freezed == schoolId
            ? _value.schoolId
            : schoolId // ignore: cast_nullable_to_non_nullable
                  as int?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        courseId: freezed == courseId
            ? _value.courseId
            : courseId // ignore: cast_nullable_to_non_nullable
                  as int?,
        communityId: freezed == communityId
            ? _value.communityId
            : communityId // ignore: cast_nullable_to_non_nullable
                  as int?,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as int?,
        feedTxt: freezed == feedTxt
            ? _value.feedTxt
            : feedTxt // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        title: freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        activityType: freezed == activityType
            ? _value.activityType
            : activityType // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPinned: null == isPinned
            ? _value.isPinned
            : isPinned // ignore: cast_nullable_to_non_nullable
                  as int,
        fileType: freezed == fileType
            ? _value.fileType
            : fileType // ignore: cast_nullable_to_non_nullable
                  as String?,
        files: freezed == files
            ? _value._files
            : files // ignore: cast_nullable_to_non_nullable
                  as List<PostFile>?,
        likeCount: null == likeCount
            ? _value.likeCount
            : likeCount // ignore: cast_nullable_to_non_nullable
                  as int,
        commentCount: null == commentCount
            ? _value.commentCount
            : commentCount // ignore: cast_nullable_to_non_nullable
                  as int,
        shareCount: null == shareCount
            ? _value.shareCount
            : shareCount // ignore: cast_nullable_to_non_nullable
                  as int,
        shareId: null == shareId
            ? _value.shareId
            : shareId // ignore: cast_nullable_to_non_nullable
                  as int,
        metaData: freezed == metaData
            ? _value._metaData
            : metaData // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        feedPrivacy: freezed == feedPrivacy
            ? _value.feedPrivacy
            : feedPrivacy // ignore: cast_nullable_to_non_nullable
                  as String?,
        isBackground: null == isBackground
            ? _value.isBackground
            : isBackground // ignore: cast_nullable_to_non_nullable
                  as int,
        bgColor: freezed == bgColor
            ? _value.bgColor
            : bgColor // ignore: cast_nullable_to_non_nullable
                  as String?,
        pollId: freezed == pollId
            ? _value.pollId
            : pollId // ignore: cast_nullable_to_non_nullable
                  as int?,
        lessonId: freezed == lessonId
            ? _value.lessonId
            : lessonId // ignore: cast_nullable_to_non_nullable
                  as int?,
        spaceId: freezed == spaceId
            ? _value.spaceId
            : spaceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        videoId: freezed == videoId
            ? _value.videoId
            : videoId // ignore: cast_nullable_to_non_nullable
                  as int?,
        streamId: freezed == streamId
            ? _value.streamId
            : streamId // ignore: cast_nullable_to_non_nullable
                  as int?,
        blogId: freezed == blogId
            ? _value.blogId
            : blogId // ignore: cast_nullable_to_non_nullable
                  as int?,
        scheduleDate: freezed == scheduleDate
            ? _value.scheduleDate
            : scheduleDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        timezone: freezed == timezone
            ? _value.timezone
            : timezone // ignore: cast_nullable_to_non_nullable
                  as String?,
        isAnonymous: null == isAnonymous
            ? _value.isAnonymous
            : isAnonymous // ignore: cast_nullable_to_non_nullable
                  as int,
        meetingId: freezed == meetingId
            ? _value.meetingId
            : meetingId // ignore: cast_nullable_to_non_nullable
                  as int?,
        sellerId: freezed == sellerId
            ? _value.sellerId
            : sellerId // ignore: cast_nullable_to_non_nullable
                  as int?,
        publishDate: freezed == publishDate
            ? _value.publishDate
            : publishDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        coachingFeedId: freezed == coachingFeedId
            ? _value.coachingFeedId
            : coachingFeedId // ignore: cast_nullable_to_non_nullable
                  as int?,
        isFeedEdit: null == isFeedEdit
            ? _value.isFeedEdit
            : isFeedEdit // ignore: cast_nullable_to_non_nullable
                  as bool,
        name: freezed == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String?,
        pic: freezed == pic
            ? _value.pic
            : pic // ignore: cast_nullable_to_non_nullable
                  as String?,
        uid: freezed == uid
            ? _value.uid
            : uid // ignore: cast_nullable_to_non_nullable
                  as int?,
        isPrivateChat: null == isPrivateChat
            ? _value.isPrivateChat
            : isPrivateChat // ignore: cast_nullable_to_non_nullable
                  as int,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as PostUser?,
        streamDetails: freezed == streamDetails
            ? _value.streamDetails
            : streamDetails // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        poll: freezed == poll
            ? _value.poll
            : poll // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        likeType: freezed == likeType
            ? _value._likeType
            : likeType // ignore: cast_nullable_to_non_nullable
                  as List<dynamic>?,
        like: freezed == like
            ? _value.like
            : like // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        group: freezed == group
            ? _value.group
            : group // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        savedPosts: freezed == savedPosts
            ? _value.savedPosts
            : savedPosts // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        follow: freezed == follow
            ? _value.follow
            : follow // ignore: cast_nullable_to_non_nullable
                  as dynamic,
        comments: freezed == comments
            ? _value._comments
            : comments // ignore: cast_nullable_to_non_nullable
                  as List<Comment>?,
        meta: freezed == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as PostMeta?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl implements _Post {
  const _$PostImpl({
    required this.id,
    this.schoolId,
    this.userId,
    this.courseId,
    this.communityId,
    this.groupId,
    this.feedTxt,
    this.status,
    this.slug,
    this.title,
    this.activityType,
    this.isPinned = 0,
    this.fileType,
    final List<PostFile>? files,
    this.likeCount = 0,
    this.commentCount = 0,
    this.shareCount = 0,
    this.shareId = 0,
    final Map<String, dynamic>? metaData,
    this.createdAt,
    this.updatedAt,
    this.feedPrivacy,
    this.isBackground = 0,
    this.bgColor,
    this.pollId,
    this.lessonId,
    this.spaceId,
    this.videoId,
    this.streamId,
    this.blogId,
    this.scheduleDate,
    this.timezone,
    this.isAnonymous = 0,
    this.meetingId,
    this.sellerId,
    this.publishDate,
    this.coachingFeedId,
    this.isFeedEdit = false,
    this.name,
    this.pic,
    this.uid,
    this.isPrivateChat = 0,
    this.user,
    this.streamDetails,
    this.poll,
    final List<dynamic>? likeType,
    this.like,
    this.group,
    this.savedPosts,
    this.follow,
    final List<Comment>? comments,
    this.meta,
  }) : _files = files,
       _metaData = metaData,
       _likeType = likeType,
       _comments = comments;

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final int id;
  @override
  final int? schoolId;
  @override
  final int? userId;
  @override
  final int? courseId;
  @override
  final int? communityId;
  @override
  final int? groupId;
  @override
  final String? feedTxt;
  @override
  final String? status;
  @override
  final String? slug;
  @override
  final String? title;
  @override
  final String? activityType;
  @override
  @JsonKey()
  final int isPinned;
  @override
  final String? fileType;
  final List<PostFile>? _files;
  @override
  List<PostFile>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int likeCount;
  @override
  @JsonKey()
  final int commentCount;
  @override
  @JsonKey()
  final int shareCount;
  @override
  @JsonKey()
  final int shareId;
  final Map<String, dynamic>? _metaData;
  @override
  Map<String, dynamic>? get metaData {
    final value = _metaData;
    if (value == null) return null;
    if (_metaData is EqualUnmodifiableMapView) return _metaData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? createdAt;
  @override
  final String? updatedAt;
  @override
  final String? feedPrivacy;
  @override
  @JsonKey()
  final int isBackground;
  @override
  final String? bgColor;
  @override
  final int? pollId;
  @override
  final int? lessonId;
  @override
  final int? spaceId;
  @override
  final int? videoId;
  @override
  final int? streamId;
  @override
  final int? blogId;
  @override
  final String? scheduleDate;
  @override
  final String? timezone;
  @override
  @JsonKey()
  final int isAnonymous;
  @override
  final int? meetingId;
  @override
  final int? sellerId;
  @override
  final String? publishDate;
  @override
  final int? coachingFeedId;
  @override
  @JsonKey()
  final bool isFeedEdit;
  @override
  final String? name;
  @override
  final String? pic;
  @override
  final int? uid;
  @override
  @JsonKey()
  final int isPrivateChat;
  @override
  final PostUser? user;
  @override
  final dynamic streamDetails;
  @override
  final dynamic poll;
  final List<dynamic>? _likeType;
  @override
  List<dynamic>? get likeType {
    final value = _likeType;
    if (value == null) return null;
    if (_likeType is EqualUnmodifiableListView) return _likeType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic like;
  @override
  final dynamic group;
  @override
  final dynamic savedPosts;
  @override
  final dynamic follow;
  final List<Comment>? _comments;
  @override
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final PostMeta? meta;

  @override
  String toString() {
    return 'Post(id: $id, schoolId: $schoolId, userId: $userId, courseId: $courseId, communityId: $communityId, groupId: $groupId, feedTxt: $feedTxt, status: $status, slug: $slug, title: $title, activityType: $activityType, isPinned: $isPinned, fileType: $fileType, files: $files, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, shareId: $shareId, metaData: $metaData, createdAt: $createdAt, updatedAt: $updatedAt, feedPrivacy: $feedPrivacy, isBackground: $isBackground, bgColor: $bgColor, pollId: $pollId, lessonId: $lessonId, spaceId: $spaceId, videoId: $videoId, streamId: $streamId, blogId: $blogId, scheduleDate: $scheduleDate, timezone: $timezone, isAnonymous: $isAnonymous, meetingId: $meetingId, sellerId: $sellerId, publishDate: $publishDate, coachingFeedId: $coachingFeedId, isFeedEdit: $isFeedEdit, name: $name, pic: $pic, uid: $uid, isPrivateChat: $isPrivateChat, user: $user, streamDetails: $streamDetails, poll: $poll, likeType: $likeType, like: $like, group: $group, savedPosts: $savedPosts, follow: $follow, comments: $comments, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.feedTxt, feedTxt) || other.feedTxt == feedTxt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.shareId, shareId) || other.shareId == shareId) &&
            const DeepCollectionEquality().equals(other._metaData, _metaData) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.feedPrivacy, feedPrivacy) ||
                other.feedPrivacy == feedPrivacy) &&
            (identical(other.isBackground, isBackground) ||
                other.isBackground == isBackground) &&
            (identical(other.bgColor, bgColor) || other.bgColor == bgColor) &&
            (identical(other.pollId, pollId) || other.pollId == pollId) &&
            (identical(other.lessonId, lessonId) ||
                other.lessonId == lessonId) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.streamId, streamId) ||
                other.streamId == streamId) &&
            (identical(other.blogId, blogId) || other.blogId == blogId) &&
            (identical(other.scheduleDate, scheduleDate) ||
                other.scheduleDate == scheduleDate) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId) &&
            (identical(other.sellerId, sellerId) ||
                other.sellerId == sellerId) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.coachingFeedId, coachingFeedId) ||
                other.coachingFeedId == coachingFeedId) &&
            (identical(other.isFeedEdit, isFeedEdit) ||
                other.isFeedEdit == isFeedEdit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPrivateChat, isPrivateChat) ||
                other.isPrivateChat == isPrivateChat) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(
              other.streamDetails,
              streamDetails,
            ) &&
            const DeepCollectionEquality().equals(other.poll, poll) &&
            const DeepCollectionEquality().equals(other._likeType, _likeType) &&
            const DeepCollectionEquality().equals(other.like, like) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            const DeepCollectionEquality().equals(
              other.savedPosts,
              savedPosts,
            ) &&
            const DeepCollectionEquality().equals(other.follow, follow) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    schoolId,
    userId,
    courseId,
    communityId,
    groupId,
    feedTxt,
    status,
    slug,
    title,
    activityType,
    isPinned,
    fileType,
    const DeepCollectionEquality().hash(_files),
    likeCount,
    commentCount,
    shareCount,
    shareId,
    const DeepCollectionEquality().hash(_metaData),
    createdAt,
    updatedAt,
    feedPrivacy,
    isBackground,
    bgColor,
    pollId,
    lessonId,
    spaceId,
    videoId,
    streamId,
    blogId,
    scheduleDate,
    timezone,
    isAnonymous,
    meetingId,
    sellerId,
    publishDate,
    coachingFeedId,
    isFeedEdit,
    name,
    pic,
    uid,
    isPrivateChat,
    user,
    const DeepCollectionEquality().hash(streamDetails),
    const DeepCollectionEquality().hash(poll),
    const DeepCollectionEquality().hash(_likeType),
    const DeepCollectionEquality().hash(like),
    const DeepCollectionEquality().hash(group),
    const DeepCollectionEquality().hash(savedPosts),
    const DeepCollectionEquality().hash(follow),
    const DeepCollectionEquality().hash(_comments),
    meta,
  ]);

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(this);
  }
}

abstract class _Post implements Post {
  const factory _Post({
    required final int id,
    final int? schoolId,
    final int? userId,
    final int? courseId,
    final int? communityId,
    final int? groupId,
    final String? feedTxt,
    final String? status,
    final String? slug,
    final String? title,
    final String? activityType,
    final int isPinned,
    final String? fileType,
    final List<PostFile>? files,
    final int likeCount,
    final int commentCount,
    final int shareCount,
    final int shareId,
    final Map<String, dynamic>? metaData,
    final String? createdAt,
    final String? updatedAt,
    final String? feedPrivacy,
    final int isBackground,
    final String? bgColor,
    final int? pollId,
    final int? lessonId,
    final int? spaceId,
    final int? videoId,
    final int? streamId,
    final int? blogId,
    final String? scheduleDate,
    final String? timezone,
    final int isAnonymous,
    final int? meetingId,
    final int? sellerId,
    final String? publishDate,
    final int? coachingFeedId,
    final bool isFeedEdit,
    final String? name,
    final String? pic,
    final int? uid,
    final int isPrivateChat,
    final PostUser? user,
    final dynamic streamDetails,
    final dynamic poll,
    final List<dynamic>? likeType,
    final dynamic like,
    final dynamic group,
    final dynamic savedPosts,
    final dynamic follow,
    final List<Comment>? comments,
    final PostMeta? meta,
  }) = _$PostImpl;

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  int get id;
  @override
  int? get schoolId;
  @override
  int? get userId;
  @override
  int? get courseId;
  @override
  int? get communityId;
  @override
  int? get groupId;
  @override
  String? get feedTxt;
  @override
  String? get status;
  @override
  String? get slug;
  @override
  String? get title;
  @override
  String? get activityType;
  @override
  int get isPinned;
  @override
  String? get fileType;
  @override
  List<PostFile>? get files;
  @override
  int get likeCount;
  @override
  int get commentCount;
  @override
  int get shareCount;
  @override
  int get shareId;
  @override
  Map<String, dynamic>? get metaData;
  @override
  String? get createdAt;
  @override
  String? get updatedAt;
  @override
  String? get feedPrivacy;
  @override
  int get isBackground;
  @override
  String? get bgColor;
  @override
  int? get pollId;
  @override
  int? get lessonId;
  @override
  int? get spaceId;
  @override
  int? get videoId;
  @override
  int? get streamId;
  @override
  int? get blogId;
  @override
  String? get scheduleDate;
  @override
  String? get timezone;
  @override
  int get isAnonymous;
  @override
  int? get meetingId;
  @override
  int? get sellerId;
  @override
  String? get publishDate;
  @override
  int? get coachingFeedId;
  @override
  bool get isFeedEdit;
  @override
  String? get name;
  @override
  String? get pic;
  @override
  int? get uid;
  @override
  int get isPrivateChat;
  @override
  PostUser? get user;
  @override
  dynamic get streamDetails;
  @override
  dynamic get poll;
  @override
  List<dynamic>? get likeType;
  @override
  dynamic get like;
  @override
  dynamic get group;
  @override
  dynamic get savedPosts;
  @override
  dynamic get follow;
  @override
  List<Comment>? get comments;
  @override
  PostMeta? get meta;

  /// Create a copy of Post
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostFile _$PostFileFromJson(Map<String, dynamic> json) {
  return _PostFile.fromJson(json);
}

/// @nodoc
mixin _$PostFile {
  String? get fileLoc => throw _privateConstructorUsedError;
  String? get originalName => throw _privateConstructorUsedError;
  String? get extname => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;

  /// Serializes this PostFile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostFileCopyWith<PostFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostFileCopyWith<$Res> {
  factory $PostFileCopyWith(PostFile value, $Res Function(PostFile) then) =
      _$PostFileCopyWithImpl<$Res, PostFile>;
  @useResult
  $Res call({
    String? fileLoc,
    String? originalName,
    String? extname,
    String? type,
    int size,
  });
}

/// @nodoc
class _$PostFileCopyWithImpl<$Res, $Val extends PostFile>
    implements $PostFileCopyWith<$Res> {
  _$PostFileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLoc = freezed,
    Object? originalName = freezed,
    Object? extname = freezed,
    Object? type = freezed,
    Object? size = null,
  }) {
    return _then(
      _value.copyWith(
            fileLoc: freezed == fileLoc
                ? _value.fileLoc
                : fileLoc // ignore: cast_nullable_to_non_nullable
                      as String?,
            originalName: freezed == originalName
                ? _value.originalName
                : originalName // ignore: cast_nullable_to_non_nullable
                      as String?,
            extname: freezed == extname
                ? _value.extname
                : extname // ignore: cast_nullable_to_non_nullable
                      as String?,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            size: null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostFileImplCopyWith<$Res>
    implements $PostFileCopyWith<$Res> {
  factory _$$PostFileImplCopyWith(
    _$PostFileImpl value,
    $Res Function(_$PostFileImpl) then,
  ) = __$$PostFileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? fileLoc,
    String? originalName,
    String? extname,
    String? type,
    int size,
  });
}

/// @nodoc
class __$$PostFileImplCopyWithImpl<$Res>
    extends _$PostFileCopyWithImpl<$Res, _$PostFileImpl>
    implements _$$PostFileImplCopyWith<$Res> {
  __$$PostFileImplCopyWithImpl(
    _$PostFileImpl _value,
    $Res Function(_$PostFileImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostFile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileLoc = freezed,
    Object? originalName = freezed,
    Object? extname = freezed,
    Object? type = freezed,
    Object? size = null,
  }) {
    return _then(
      _$PostFileImpl(
        fileLoc: freezed == fileLoc
            ? _value.fileLoc
            : fileLoc // ignore: cast_nullable_to_non_nullable
                  as String?,
        originalName: freezed == originalName
            ? _value.originalName
            : originalName // ignore: cast_nullable_to_non_nullable
                  as String?,
        extname: freezed == extname
            ? _value.extname
            : extname // ignore: cast_nullable_to_non_nullable
                  as String?,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        size: null == size
            ? _value.size
            : size // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostFileImpl implements _PostFile {
  const _$PostFileImpl({
    this.fileLoc,
    this.originalName,
    this.extname,
    this.type,
    this.size = 0,
  });

  factory _$PostFileImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostFileImplFromJson(json);

  @override
  final String? fileLoc;
  @override
  final String? originalName;
  @override
  final String? extname;
  @override
  final String? type;
  @override
  @JsonKey()
  final int size;

  @override
  String toString() {
    return 'PostFile(fileLoc: $fileLoc, originalName: $originalName, extname: $extname, type: $type, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostFileImpl &&
            (identical(other.fileLoc, fileLoc) || other.fileLoc == fileLoc) &&
            (identical(other.originalName, originalName) ||
                other.originalName == originalName) &&
            (identical(other.extname, extname) || other.extname == extname) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fileLoc, originalName, extname, type, size);

  /// Create a copy of PostFile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostFileImplCopyWith<_$PostFileImpl> get copyWith =>
      __$$PostFileImplCopyWithImpl<_$PostFileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostFileImplToJson(this);
  }
}

abstract class _PostFile implements PostFile {
  const factory _PostFile({
    final String? fileLoc,
    final String? originalName,
    final String? extname,
    final String? type,
    final int size,
  }) = _$PostFileImpl;

  factory _PostFile.fromJson(Map<String, dynamic> json) =
      _$PostFileImpl.fromJson;

  @override
  String? get fileLoc;
  @override
  String? get originalName;
  @override
  String? get extname;
  @override
  String? get type;
  @override
  int get size;

  /// Create a copy of PostFile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostFileImplCopyWith<_$PostFileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostUser _$PostUserFromJson(Map<String, dynamic> json) {
  return _PostUser.fromJson(json);
}

/// @nodoc
mixin _$PostUser {
  int get id => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  int get isPrivateChat => throw _privateConstructorUsedError;
  String? get expireDate => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get pauseDate => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this PostUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostUserCopyWith<PostUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostUserCopyWith<$Res> {
  factory $PostUserCopyWith(PostUser value, $Res Function(PostUser) then) =
      _$PostUserCopyWithImpl<$Res, PostUser>;
  @useResult
  $Res call({
    int id,
    String? fullName,
    String? profilePic,
    int isPrivateChat,
    String? expireDate,
    String? status,
    String? pauseDate,
    String? userType,
    Map<String, dynamic>? meta,
  });
}

/// @nodoc
class _$PostUserCopyWithImpl<$Res, $Val extends PostUser>
    implements $PostUserCopyWith<$Res> {
  _$PostUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? isPrivateChat = null,
    Object? expireDate = freezed,
    Object? status = freezed,
    Object? pauseDate = freezed,
    Object? userType = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrivateChat: null == isPrivateChat
                ? _value.isPrivateChat
                : isPrivateChat // ignore: cast_nullable_to_non_nullable
                      as int,
            expireDate: freezed == expireDate
                ? _value.expireDate
                : expireDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            pauseDate: freezed == pauseDate
                ? _value.pauseDate
                : pauseDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            userType: freezed == userType
                ? _value.userType
                : userType // ignore: cast_nullable_to_non_nullable
                      as String?,
            meta: freezed == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostUserImplCopyWith<$Res>
    implements $PostUserCopyWith<$Res> {
  factory _$$PostUserImplCopyWith(
    _$PostUserImpl value,
    $Res Function(_$PostUserImpl) then,
  ) = __$$PostUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? fullName,
    String? profilePic,
    int isPrivateChat,
    String? expireDate,
    String? status,
    String? pauseDate,
    String? userType,
    Map<String, dynamic>? meta,
  });
}

/// @nodoc
class __$$PostUserImplCopyWithImpl<$Res>
    extends _$PostUserCopyWithImpl<$Res, _$PostUserImpl>
    implements _$$PostUserImplCopyWith<$Res> {
  __$$PostUserImplCopyWithImpl(
    _$PostUserImpl _value,
    $Res Function(_$PostUserImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? isPrivateChat = null,
    Object? expireDate = freezed,
    Object? status = freezed,
    Object? pauseDate = freezed,
    Object? userType = freezed,
    Object? meta = freezed,
  }) {
    return _then(
      _$PostUserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrivateChat: null == isPrivateChat
            ? _value.isPrivateChat
            : isPrivateChat // ignore: cast_nullable_to_non_nullable
                  as int,
        expireDate: freezed == expireDate
            ? _value.expireDate
            : expireDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        pauseDate: freezed == pauseDate
            ? _value.pauseDate
            : pauseDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        userType: freezed == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: freezed == meta
            ? _value._meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostUserImpl implements _PostUser {
  const _$PostUserImpl({
    required this.id,
    this.fullName,
    this.profilePic,
    this.isPrivateChat = 0,
    this.expireDate,
    this.status,
    this.pauseDate,
    this.userType,
    final Map<String, dynamic>? meta,
  }) : _meta = meta;

  factory _$PostUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostUserImplFromJson(json);

  @override
  final int id;
  @override
  final String? fullName;
  @override
  final String? profilePic;
  @override
  @JsonKey()
  final int isPrivateChat;
  @override
  final String? expireDate;
  @override
  final String? status;
  @override
  final String? pauseDate;
  @override
  final String? userType;
  final Map<String, dynamic>? _meta;
  @override
  Map<String, dynamic>? get meta {
    final value = _meta;
    if (value == null) return null;
    if (_meta is EqualUnmodifiableMapView) return _meta;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'PostUser(id: $id, fullName: $fullName, profilePic: $profilePic, isPrivateChat: $isPrivateChat, expireDate: $expireDate, status: $status, pauseDate: $pauseDate, userType: $userType, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.isPrivateChat, isPrivateChat) ||
                other.isPrivateChat == isPrivateChat) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.pauseDate, pauseDate) ||
                other.pauseDate == pauseDate) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    fullName,
    profilePic,
    isPrivateChat,
    expireDate,
    status,
    pauseDate,
    userType,
    const DeepCollectionEquality().hash(_meta),
  );

  /// Create a copy of PostUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostUserImplCopyWith<_$PostUserImpl> get copyWith =>
      __$$PostUserImplCopyWithImpl<_$PostUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostUserImplToJson(this);
  }
}

abstract class _PostUser implements PostUser {
  const factory _PostUser({
    required final int id,
    final String? fullName,
    final String? profilePic,
    final int isPrivateChat,
    final String? expireDate,
    final String? status,
    final String? pauseDate,
    final String? userType,
    final Map<String, dynamic>? meta,
  }) = _$PostUserImpl;

  factory _PostUser.fromJson(Map<String, dynamic> json) =
      _$PostUserImpl.fromJson;

  @override
  int get id;
  @override
  String? get fullName;
  @override
  String? get profilePic;
  @override
  int get isPrivateChat;
  @override
  String? get expireDate;
  @override
  String? get status;
  @override
  String? get pauseDate;
  @override
  String? get userType;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of PostUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostUserImplCopyWith<_$PostUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostMeta _$PostMetaFromJson(Map<String, dynamic> json) {
  return _PostMeta.fromJson(json);
}

/// @nodoc
mixin _$PostMeta {
  int get views => throw _privateConstructorUsedError;
  dynamic get giftedCoins => throw _privateConstructorUsedError;

  /// Serializes this PostMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostMetaCopyWith<PostMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostMetaCopyWith<$Res> {
  factory $PostMetaCopyWith(PostMeta value, $Res Function(PostMeta) then) =
      _$PostMetaCopyWithImpl<$Res, PostMeta>;
  @useResult
  $Res call({int views, dynamic giftedCoins});
}

/// @nodoc
class _$PostMetaCopyWithImpl<$Res, $Val extends PostMeta>
    implements $PostMetaCopyWith<$Res> {
  _$PostMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? views = null, Object? giftedCoins = freezed}) {
    return _then(
      _value.copyWith(
            views: null == views
                ? _value.views
                : views // ignore: cast_nullable_to_non_nullable
                      as int,
            giftedCoins: freezed == giftedCoins
                ? _value.giftedCoins
                : giftedCoins // ignore: cast_nullable_to_non_nullable
                      as dynamic,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PostMetaImplCopyWith<$Res>
    implements $PostMetaCopyWith<$Res> {
  factory _$$PostMetaImplCopyWith(
    _$PostMetaImpl value,
    $Res Function(_$PostMetaImpl) then,
  ) = __$$PostMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int views, dynamic giftedCoins});
}

/// @nodoc
class __$$PostMetaImplCopyWithImpl<$Res>
    extends _$PostMetaCopyWithImpl<$Res, _$PostMetaImpl>
    implements _$$PostMetaImplCopyWith<$Res> {
  __$$PostMetaImplCopyWithImpl(
    _$PostMetaImpl _value,
    $Res Function(_$PostMetaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PostMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? views = null, Object? giftedCoins = freezed}) {
    return _then(
      _$PostMetaImpl(
        views: null == views
            ? _value.views
            : views // ignore: cast_nullable_to_non_nullable
                  as int,
        giftedCoins: freezed == giftedCoins
            ? _value.giftedCoins
            : giftedCoins // ignore: cast_nullable_to_non_nullable
                  as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$PostMetaImpl implements _PostMeta {
  const _$PostMetaImpl({this.views = 0, this.giftedCoins});

  factory _$PostMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostMetaImplFromJson(json);

  @override
  @JsonKey()
  final int views;
  @override
  final dynamic giftedCoins;

  @override
  String toString() {
    return 'PostMeta(views: $views, giftedCoins: $giftedCoins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostMetaImpl &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(
              other.giftedCoins,
              giftedCoins,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    views,
    const DeepCollectionEquality().hash(giftedCoins),
  );

  /// Create a copy of PostMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostMetaImplCopyWith<_$PostMetaImpl> get copyWith =>
      __$$PostMetaImplCopyWithImpl<_$PostMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostMetaImplToJson(this);
  }
}

abstract class _PostMeta implements PostMeta {
  const factory _PostMeta({final int views, final dynamic giftedCoins}) =
      _$PostMetaImpl;

  factory _PostMeta.fromJson(Map<String, dynamic> json) =
      _$PostMetaImpl.fromJson;

  @override
  int get views;
  @override
  dynamic get giftedCoins;

  /// Create a copy of PostMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostMetaImplCopyWith<_$PostMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comment _$CommentFromJson(Map<String, dynamic> json) {
  return _Comment.fromJson(json);
}

/// @nodoc
mixin _$Comment {
  int get id => throw _privateConstructorUsedError;
  int? get postId => throw _privateConstructorUsedError;
  int? get authorId => throw _privateConstructorUsedError;
  String? get authorName => throw _privateConstructorUsedError;
  String? get authorAvatar => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Comment to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentCopyWith<Comment> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentCopyWith<$Res> {
  factory $CommentCopyWith(Comment value, $Res Function(Comment) then) =
      _$CommentCopyWithImpl<$Res, Comment>;
  @useResult
  $Res call({
    int id,
    int? postId,
    int? authorId,
    String? authorName,
    String? authorAvatar,
    String? content,
    String? createdAt,
  });
}

/// @nodoc
class _$CommentCopyWithImpl<$Res, $Val extends Comment>
    implements $CommentCopyWith<$Res> {
  _$CommentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatar = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            postId: freezed == postId
                ? _value.postId
                : postId // ignore: cast_nullable_to_non_nullable
                      as int?,
            authorId: freezed == authorId
                ? _value.authorId
                : authorId // ignore: cast_nullable_to_non_nullable
                      as int?,
            authorName: freezed == authorName
                ? _value.authorName
                : authorName // ignore: cast_nullable_to_non_nullable
                      as String?,
            authorAvatar: freezed == authorAvatar
                ? _value.authorAvatar
                : authorAvatar // ignore: cast_nullable_to_non_nullable
                      as String?,
            content: freezed == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> implements $CommentCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
    _$CommentImpl value,
    $Res Function(_$CommentImpl) then,
  ) = __$$CommentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    int? postId,
    int? authorId,
    String? authorName,
    String? authorAvatar,
    String? content,
    String? createdAt,
  });
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$CommentCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
    _$CommentImpl _value,
    $Res Function(_$CommentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? postId = freezed,
    Object? authorId = freezed,
    Object? authorName = freezed,
    Object? authorAvatar = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(
      _$CommentImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        postId: freezed == postId
            ? _value.postId
            : postId // ignore: cast_nullable_to_non_nullable
                  as int?,
        authorId: freezed == authorId
            ? _value.authorId
            : authorId // ignore: cast_nullable_to_non_nullable
                  as int?,
        authorName: freezed == authorName
            ? _value.authorName
            : authorName // ignore: cast_nullable_to_non_nullable
                  as String?,
        authorAvatar: freezed == authorAvatar
            ? _value.authorAvatar
            : authorAvatar // ignore: cast_nullable_to_non_nullable
                  as String?,
        content: freezed == content
            ? _value.content
            : content // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl({
    required this.id,
    this.postId,
    this.authorId,
    this.authorName,
    this.authorAvatar,
    this.content,
    this.createdAt,
  });

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final int id;
  @override
  final int? postId;
  @override
  final int? authorId;
  @override
  final String? authorName;
  @override
  final String? authorAvatar;
  @override
  final String? content;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'Comment(id: $id, postId: $postId, authorId: $authorId, authorName: $authorName, authorAvatar: $authorAvatar, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.authorAvatar, authorAvatar) ||
                other.authorAvatar == authorAvatar) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    postId,
    authorId,
    authorName,
    authorAvatar,
    content,
    createdAt,
  );

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(this);
  }
}

abstract class _Comment implements Comment {
  const factory _Comment({
    required final int id,
    final int? postId,
    final int? authorId,
    final String? authorName,
    final String? authorAvatar,
    final String? content,
    final String? createdAt,
  }) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  int get id;
  @override
  int? get postId;
  @override
  int? get authorId;
  @override
  String? get authorName;
  @override
  String? get authorAvatar;
  @override
  String? get content;
  @override
  String? get createdAt;

  /// Create a copy of Comment
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
