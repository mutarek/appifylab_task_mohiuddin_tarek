// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunitiesResponseImpl _$$CommunitiesResponseImplFromJson(
  Map<String, dynamic> json,
) => _$CommunitiesResponseImpl(
  meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
  data: (json['data'] as List<dynamic>)
      .map((e) => CommunityData.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CommunitiesResponseImplToJson(
  _$CommunitiesResponseImpl instance,
) => <String, dynamic>{'meta': instance.meta, 'data': instance.data};

_$MetaImpl _$$MetaImplFromJson(Map<String, dynamic> json) => _$MetaImpl(
  total: (json['total'] as num).toInt(),
  perPage: (json['per_page'] as num).toInt(),
  currentPage: (json['current_page'] as num).toInt(),
  lastPage: (json['last_page'] as num).toInt(),
  firstPage: (json['first_page'] as num).toInt(),
  firstPageUrl: json['first_page_url'] as String?,
  lastPageUrl: json['last_page_url'] as String?,
  nextPageUrl: json['next_page_url'] as String?,
  previousPageUrl: json['previous_page_url'] as String?,
);

Map<String, dynamic> _$$MetaImplToJson(_$MetaImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'first_page': instance.firstPage,
      'first_page_url': instance.firstPageUrl,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'previous_page_url': instance.previousPageUrl,
    };

_$CommunityDataImpl _$$CommunityDataImplFromJson(Map<String, dynamic> json) =>
    _$CommunityDataImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      thumbnail: json['thumbnail'] as String?,
      cover: json['cover'] as String?,
      slug: json['slug'] as String?,
      totalMembers: (json['totalMembers'] as num?)?.toInt() ?? 0,
      thumbnail2: json['thumbnail2'] as String?,
      totalFeeds: (json['totalFeeds'] as num?)?.toInt() ?? 0,
      status: json['status'] as String?,
      groupId: (json['groupId'] as num?)?.toInt(),
      enrollmentId: (json['enrollmentId'] as num?)?.toInt(),
      expiredAt: json['expiredAt'] as String?,
      expiryDate: json['expiryDate'] as String?,
      userHasNotification: json['userHasNotification'] as bool? ?? false,
    );

Map<String, dynamic> _$$CommunityDataImplToJson(_$CommunityDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'thumbnail': instance.thumbnail,
      'cover': instance.cover,
      'slug': instance.slug,
      'totalMembers': instance.totalMembers,
      'thumbnail2': instance.thumbnail2,
      'totalFeeds': instance.totalFeeds,
      'status': instance.status,
      'groupId': instance.groupId,
      'enrollmentId': instance.enrollmentId,
      'expiredAt': instance.expiredAt,
      'expiryDate': instance.expiryDate,
      'userHasNotification': instance.userHasNotification,
    };

_$CommunityDetailsImpl _$$CommunityDetailsImplFromJson(
  Map<String, dynamic> json,
) => _$CommunityDetailsImpl(
  id: (json['id'] as num).toInt(),
  groupName: json['groupName'] as String,
  about: json['about'] as String?,
  cover: json['cover'] as String?,
  profilePic: json['profilePic'] as String?,
  groupPrivacy: json['groupPrivacy'] as String?,
  meta: CommunityMeta.fromJson(json['meta'] as Map<String, dynamic>),
  tabSettings: (json['tabSettings'] as List<dynamic>?)
      ?.map((e) => TabSetting.fromJson(e as Map<String, dynamic>))
      .toList(),
  spaces: (json['spaces'] as List<dynamic>?)
      ?.map((e) => Space.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$CommunityDetailsImplToJson(
  _$CommunityDetailsImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'groupName': instance.groupName,
  'about': instance.about,
  'cover': instance.cover,
  'profilePic': instance.profilePic,
  'groupPrivacy': instance.groupPrivacy,
  'meta': instance.meta,
  'tabSettings': instance.tabSettings,
  'spaces': instance.spaces,
};

_$CommunityMetaImpl _$$CommunityMetaImplFromJson(Map<String, dynamic> json) =>
    _$CommunityMetaImpl(
      membersCount: (json['membersCount'] as num?)?.toInt() ?? 0,
      feedsCount: (json['feedsCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CommunityMetaImplToJson(_$CommunityMetaImpl instance) =>
    <String, dynamic>{
      'membersCount': instance.membersCount,
      'feedsCount': instance.feedsCount,
    };

_$TabSettingImpl _$$TabSettingImplFromJson(Map<String, dynamic> json) =>
    _$TabSettingImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      isEnabled: json['isEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$TabSettingImplToJson(_$TabSettingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isEnabled': instance.isEnabled,
    };

_$SpaceImpl _$$SpaceImplFromJson(Map<String, dynamic> json) => _$SpaceImpl(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  memberCount: (json['memberCount'] as num?)?.toInt() ?? 0,
  isFollowing: json['isFollowing'] as bool? ?? false,
);

Map<String, dynamic> _$$SpaceImplToJson(_$SpaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'memberCount': instance.memberCount,
      'isFollowing': instance.isFollowing,
    };

_$ApiSuccessResponseImpl _$$ApiSuccessResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ApiSuccessResponseImpl(
  success: json['success'] as bool? ?? true,
  message: json['message'] as String?,
  data: json['data'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$ApiSuccessResponseImplToJson(
  _$ApiSuccessResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'data': instance.data,
};

_$ApiErrorResponseImpl _$$ApiErrorResponseImplFromJson(
  Map<String, dynamic> json,
) => _$ApiErrorResponseImpl(
  success: json['success'] as bool? ?? false,
  message: json['message'] as String?,
  error: json['error'] as String?,
  statusCode: (json['statusCode'] as num?)?.toInt() ?? 400,
);

Map<String, dynamic> _$$ApiErrorResponseImplToJson(
  _$ApiErrorResponseImpl instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'error': instance.error,
  'statusCode': instance.statusCode,
};
