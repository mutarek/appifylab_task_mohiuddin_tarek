import 'package:freezed_annotation/freezed_annotation.dart';

part 'community_response_model.freezed.dart';
part 'community_response_model.g.dart';



@freezed
class CommunitiesResponse with _$CommunitiesResponse {
  const factory CommunitiesResponse({
    required Meta meta,
    required List<CommunityData> data,
  }) = _CommunitiesResponse;

  factory CommunitiesResponse.fromJson(Map<String, dynamic> json) =>
      _$CommunitiesResponseFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required int total,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    @JsonKey(name: 'first_page') required int firstPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'previous_page_url') String? previousPageUrl,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class CommunityData with _$CommunityData {
  const factory CommunityData({
    required int id,
    required String title,
    String? thumbnail,
    String? cover,
    String? slug,
    @Default(0) int totalMembers,
    String? thumbnail2,
    @Default(0) int totalFeeds,
    String? status,
    int? groupId,
    int? enrollmentId,
    String? expiredAt,
    String? expiryDate,
    @Default(false) bool userHasNotification,
  }) = _CommunityData;

  factory CommunityData.fromJson(Map<String, dynamic> json) =>
      _$CommunityDataFromJson(json);
}

// ============================================================================
// COMMUNITY DETAILS RESPONSE
// ============================================================================

@freezed
class CommunityDetails with _$CommunityDetails {
  const factory CommunityDetails({
    required int id,
    required String groupName,
    String? about,
    String? cover,
    String? profilePic,
    String? groupPrivacy,
    required CommunityMeta meta,
    List<TabSetting>? tabSettings,
    List<Space>? spaces,
  }) = _CommunityDetails;

  factory CommunityDetails.fromJson(Map<String, dynamic> json) =>
      _$CommunityDetailsFromJson(json);
}

@freezed
class CommunityMeta with _$CommunityMeta {
  const factory CommunityMeta({
    @Default(0) int membersCount,
    @Default(0) int feedsCount,
  }) = _CommunityMeta;

  factory CommunityMeta.fromJson(Map<String, dynamic> json) =>
      _$CommunityMetaFromJson(json);
}

@freezed
class TabSetting with _$TabSetting {
  const factory TabSetting({
    required int id,
    required String name,
    @Default(true) bool isEnabled,
  }) = _TabSetting;

  factory TabSetting.fromJson(Map<String, dynamic> json) =>
      _$TabSettingFromJson(json);
}

@freezed
class Space with _$Space {
  const factory Space({
    required int id,
    required String name,
    @Default(0) int memberCount,
    @Default(false) bool isFollowing,
  }) = _Space;

  factory Space.fromJson(Map<String, dynamic> json) => _$SpaceFromJson(json);
}


@freezed
class ApiSuccessResponse with _$ApiSuccessResponse {
  const factory ApiSuccessResponse({
    @Default(true) bool success,
    String? message,
    Map<String, dynamic>? data,
  }) = _ApiSuccessResponse;

  factory ApiSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiSuccessResponseFromJson(json);
}

@freezed
class ApiErrorResponse with _$ApiErrorResponse {
  const factory ApiErrorResponse({
    @Default(false) bool success,
    String? message,
    String? error,
    @Default(400) int statusCode,
  }) = _ApiErrorResponse;

  factory ApiErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorResponseFromJson(json);
}

