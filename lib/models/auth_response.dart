import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String token,
    String? type,
    String? refreshToken,
    User? user,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

@freezed
class User with _$User {
  const factory User({
    required int id,
    required String email,
    String? firstName,
    String? lastName,
    String? fullName,
    int? schoolId,
    int? canWriteDoc,
    String? isVerified,
    @Default(1) int isApproved,
    String? userType,
    String? createdBy,
    String? createdAt,
    @Default(0) int isPrivateChat,
    String? updatedAt,
    String? profilePic,
    String? isOnline,
    String? bio,
    int? userId,
    String? socialAuthProvider,
    String? lastLogin,
    String? status,
    @Default(0) int isSuspended,
    String? pauseDate,
    String? expireDate,
    @Default(0) int canWriteDocDefault,
    int? orderId,
    Map<String, dynamic>? customFields,
    int? isAllowChat,
    String? refId,
    @Default(0) int refCommissionLevel1,
    @Default(0) int refCommissionLevel2,
    String? parentRefId,
    String? refComL1ValueType,
    String? refComL2ValueType,
    @Default(0) int refAllowLinkedMembership,
    @Default(1) int isManual,
    String? referredBy,
    @Default(0) int isEligibleForSpecialOffer,
    String? isFoundling,
    int? planId,
    @Default(0) int is2faEnabled,
    String? webpushsub,
    @Default(0) int isForceLogoutEnabled,
    String? payoutPaypalEmail,
    @Default(0) int refPhyCommissionLevel1,
    @Default(0) int isManualPrivateChat,
    String? refPhyComL1ValueType,
    int? siteOwnerUserId,
    int? ezyAffiliateUserId,
    @Default(0) int stripePayoutEnabled,
    String? signupMethod,
    String? deletedAt,
    Map<String, dynamic>? signupCustomFieldsResponses,
    String? deletedBy,
    @Default(0) int refPhyCommissionLevel2,
    String? refPhyComL2ValueType,
    @Default(0) int totalNotiCount,
    @Default(0) int totalChatNotiCount,
    String? aboutMe,
    String? totalSell,
    String? sellerUniqueName,
    String? globeLink,
    String? youtubeLink,
    String? linkedinLink,
    String? facebookLink,
    String? sellerTitle,
    @JsonKey(name: 'cover_pic') String? coverPic,
    String? affiliateCouponCode,
    String? affiliateCouponUuid,
    String? organizationName,
    String? needToShowInfoModal,
    String? isNumberVerified,
    String? userTag,
    School? school,
    SchoolOrder? schoolOrder,
    @Default(0) int totalCourses,
    @Default(0) int totalBundles,
    @Default(0) int totalCommunities,
    @Default(0) int totalGroups,
    @Default(0) int totalUnseenNotifications,
    @Default(0) int totalUnseenPrivateChatMessages,
    @Default(0) int totalUnseenGroupChatMessages,
    Addons? addons,
    StudentProfileTabSettings? studentProfileTabSettings,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class School with _$School {
  const factory School({
    required int id,
    @Default(1) int isPrivateChatEnabled,
    Map<String, dynamic>? meta,
  }) = _School;

  factory School.fromJson(Map<String, dynamic> json) => _$SchoolFromJson(json);
}

@freezed
class SchoolOrder with _$SchoolOrder {
  const factory SchoolOrder({
    required int id,
    String? plan,
    String? interval,
    String? currentPeriodEnd,
    int? schoolId,
  }) = _SchoolOrder;

  factory SchoolOrder.fromJson(Map<String, dynamic> json) =>
      _$SchoolOrderFromJson(json);
}

@freezed
class Addons with _$Addons {
  const factory Addons({
    @Default(false) bool privetChat,
    @Default(false) bool studentChat,
    @Default(false) bool socialNetwork,
    @Default(false) bool videoAnalytics,
  }) = _Addons;

  factory Addons.fromJson(Map<String, dynamic> json) => _$AddonsFromJson(json);
}

@freezed
class StudentProfileTabSettings with _$StudentProfileTabSettings {
  const factory StudentProfileTabSettings({
    @Default(false) bool isEnable,
    List<TabSetting>? settings,
  }) = _StudentProfileTabSettings;

  factory StudentProfileTabSettings.fromJson(Map<String, dynamic> json) =>
      _$StudentProfileTabSettingsFromJson(json);
}

@freezed
class TabSetting with _$TabSetting {
  const factory TabSetting({
    String? settingName,
    @Default(false) bool isEnabled,
    String? settingKey,
  }) = _TabSetting;

  factory TabSetting.fromJson(Map<String, dynamic> json) =>
      _$TabSettingFromJson(json);
}

