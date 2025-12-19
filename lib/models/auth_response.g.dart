// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthResponseImpl _$$AuthResponseImplFromJson(Map<String, dynamic> json) =>
    _$AuthResponseImpl(
      token: json['token'] as String,
      type: json['type'] as String?,
      refreshToken: json['refreshToken'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthResponseImplToJson(_$AuthResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'type': instance.type,
      'refreshToken': instance.refreshToken,
      'user': instance.user,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
  id: (json['id'] as num).toInt(),
  email: json['email'] as String,
  firstName: json['firstName'] as String?,
  lastName: json['lastName'] as String?,
  fullName: json['fullName'] as String?,
  schoolId: (json['schoolId'] as num?)?.toInt(),
  canWriteDoc: (json['canWriteDoc'] as num?)?.toInt(),
  isVerified: json['isVerified'] as String?,
  isApproved: (json['isApproved'] as num?)?.toInt() ?? 1,
  userType: json['userType'] as String?,
  createdBy: json['createdBy'] as String?,
  createdAt: json['createdAt'] as String?,
  isPrivateChat: (json['isPrivateChat'] as num?)?.toInt() ?? 0,
  updatedAt: json['updatedAt'] as String?,
  profilePic: json['profilePic'] as String?,
  isOnline: json['isOnline'] as String?,
  bio: json['bio'] as String?,
  userId: (json['userId'] as num?)?.toInt(),
  socialAuthProvider: json['socialAuthProvider'] as String?,
  lastLogin: json['lastLogin'] as String?,
  status: json['status'] as String?,
  isSuspended: (json['isSuspended'] as num?)?.toInt() ?? 0,
  pauseDate: json['pauseDate'] as String?,
  expireDate: json['expireDate'] as String?,
  canWriteDocDefault: (json['canWriteDocDefault'] as num?)?.toInt() ?? 0,
  orderId: (json['orderId'] as num?)?.toInt(),
  customFields: json['customFields'] as Map<String, dynamic>?,
  isAllowChat: (json['isAllowChat'] as num?)?.toInt(),
  refId: json['refId'] as String?,
  refCommissionLevel1: (json['refCommissionLevel1'] as num?)?.toInt() ?? 0,
  refCommissionLevel2: (json['refCommissionLevel2'] as num?)?.toInt() ?? 0,
  parentRefId: json['parentRefId'] as String?,
  refComL1ValueType: json['refComL1ValueType'] as String?,
  refComL2ValueType: json['refComL2ValueType'] as String?,
  refAllowLinkedMembership:
      (json['refAllowLinkedMembership'] as num?)?.toInt() ?? 0,
  isManual: (json['isManual'] as num?)?.toInt() ?? 1,
  referredBy: json['referredBy'] as String?,
  isEligibleForSpecialOffer:
      (json['isEligibleForSpecialOffer'] as num?)?.toInt() ?? 0,
  isFoundling: json['isFoundling'] as String?,
  planId: (json['planId'] as num?)?.toInt(),
  is2faEnabled: (json['is2faEnabled'] as num?)?.toInt() ?? 0,
  webpushsub: json['webpushsub'] as String?,
  isForceLogoutEnabled: (json['isForceLogoutEnabled'] as num?)?.toInt() ?? 0,
  payoutPaypalEmail: json['payoutPaypalEmail'] as String?,
  refPhyCommissionLevel1:
      (json['refPhyCommissionLevel1'] as num?)?.toInt() ?? 0,
  isManualPrivateChat: (json['isManualPrivateChat'] as num?)?.toInt() ?? 0,
  refPhyComL1ValueType: json['refPhyComL1ValueType'] as String?,
  siteOwnerUserId: (json['siteOwnerUserId'] as num?)?.toInt(),
  ezyAffiliateUserId: (json['ezyAffiliateUserId'] as num?)?.toInt(),
  stripePayoutEnabled: (json['stripePayoutEnabled'] as num?)?.toInt() ?? 0,
  signupMethod: json['signupMethod'] as String?,
  deletedAt: json['deletedAt'] as String?,
  signupCustomFieldsResponses:
      json['signupCustomFieldsResponses'] as Map<String, dynamic>?,
  deletedBy: json['deletedBy'] as String?,
  refPhyCommissionLevel2:
      (json['refPhyCommissionLevel2'] as num?)?.toInt() ?? 0,
  refPhyComL2ValueType: json['refPhyComL2ValueType'] as String?,
  totalNotiCount: (json['totalNotiCount'] as num?)?.toInt() ?? 0,
  totalChatNotiCount: (json['totalChatNotiCount'] as num?)?.toInt() ?? 0,
  aboutMe: json['aboutMe'] as String?,
  totalSell: json['totalSell'] as String?,
  sellerUniqueName: json['sellerUniqueName'] as String?,
  globeLink: json['globeLink'] as String?,
  youtubeLink: json['youtubeLink'] as String?,
  linkedinLink: json['linkedinLink'] as String?,
  facebookLink: json['facebookLink'] as String?,
  sellerTitle: json['sellerTitle'] as String?,
  coverPic: json['cover_pic'] as String?,
  affiliateCouponCode: json['affiliateCouponCode'] as String?,
  affiliateCouponUuid: json['affiliateCouponUuid'] as String?,
  organizationName: json['organizationName'] as String?,
  needToShowInfoModal: json['needToShowInfoModal'] as String?,
  isNumberVerified: json['isNumberVerified'] as String?,
  userTag: json['userTag'] as String?,
  school: json['school'] == null
      ? null
      : School.fromJson(json['school'] as Map<String, dynamic>),
  schoolOrder: json['schoolOrder'] == null
      ? null
      : SchoolOrder.fromJson(json['schoolOrder'] as Map<String, dynamic>),
  totalCourses: (json['totalCourses'] as num?)?.toInt() ?? 0,
  totalBundles: (json['totalBundles'] as num?)?.toInt() ?? 0,
  totalCommunities: (json['totalCommunities'] as num?)?.toInt() ?? 0,
  totalGroups: (json['totalGroups'] as num?)?.toInt() ?? 0,
  totalUnseenNotifications:
      (json['totalUnseenNotifications'] as num?)?.toInt() ?? 0,
  totalUnseenPrivateChatMessages:
      (json['totalUnseenPrivateChatMessages'] as num?)?.toInt() ?? 0,
  totalUnseenGroupChatMessages:
      (json['totalUnseenGroupChatMessages'] as num?)?.toInt() ?? 0,
  addons: json['addons'] == null
      ? null
      : Addons.fromJson(json['addons'] as Map<String, dynamic>),
  studentProfileTabSettings: json['studentProfileTabSettings'] == null
      ? null
      : StudentProfileTabSettings.fromJson(
          json['studentProfileTabSettings'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'fullName': instance.fullName,
      'schoolId': instance.schoolId,
      'canWriteDoc': instance.canWriteDoc,
      'isVerified': instance.isVerified,
      'isApproved': instance.isApproved,
      'userType': instance.userType,
      'createdBy': instance.createdBy,
      'createdAt': instance.createdAt,
      'isPrivateChat': instance.isPrivateChat,
      'updatedAt': instance.updatedAt,
      'profilePic': instance.profilePic,
      'isOnline': instance.isOnline,
      'bio': instance.bio,
      'userId': instance.userId,
      'socialAuthProvider': instance.socialAuthProvider,
      'lastLogin': instance.lastLogin,
      'status': instance.status,
      'isSuspended': instance.isSuspended,
      'pauseDate': instance.pauseDate,
      'expireDate': instance.expireDate,
      'canWriteDocDefault': instance.canWriteDocDefault,
      'orderId': instance.orderId,
      'customFields': instance.customFields,
      'isAllowChat': instance.isAllowChat,
      'refId': instance.refId,
      'refCommissionLevel1': instance.refCommissionLevel1,
      'refCommissionLevel2': instance.refCommissionLevel2,
      'parentRefId': instance.parentRefId,
      'refComL1ValueType': instance.refComL1ValueType,
      'refComL2ValueType': instance.refComL2ValueType,
      'refAllowLinkedMembership': instance.refAllowLinkedMembership,
      'isManual': instance.isManual,
      'referredBy': instance.referredBy,
      'isEligibleForSpecialOffer': instance.isEligibleForSpecialOffer,
      'isFoundling': instance.isFoundling,
      'planId': instance.planId,
      'is2faEnabled': instance.is2faEnabled,
      'webpushsub': instance.webpushsub,
      'isForceLogoutEnabled': instance.isForceLogoutEnabled,
      'payoutPaypalEmail': instance.payoutPaypalEmail,
      'refPhyCommissionLevel1': instance.refPhyCommissionLevel1,
      'isManualPrivateChat': instance.isManualPrivateChat,
      'refPhyComL1ValueType': instance.refPhyComL1ValueType,
      'siteOwnerUserId': instance.siteOwnerUserId,
      'ezyAffiliateUserId': instance.ezyAffiliateUserId,
      'stripePayoutEnabled': instance.stripePayoutEnabled,
      'signupMethod': instance.signupMethod,
      'deletedAt': instance.deletedAt,
      'signupCustomFieldsResponses': instance.signupCustomFieldsResponses,
      'deletedBy': instance.deletedBy,
      'refPhyCommissionLevel2': instance.refPhyCommissionLevel2,
      'refPhyComL2ValueType': instance.refPhyComL2ValueType,
      'totalNotiCount': instance.totalNotiCount,
      'totalChatNotiCount': instance.totalChatNotiCount,
      'aboutMe': instance.aboutMe,
      'totalSell': instance.totalSell,
      'sellerUniqueName': instance.sellerUniqueName,
      'globeLink': instance.globeLink,
      'youtubeLink': instance.youtubeLink,
      'linkedinLink': instance.linkedinLink,
      'facebookLink': instance.facebookLink,
      'sellerTitle': instance.sellerTitle,
      'cover_pic': instance.coverPic,
      'affiliateCouponCode': instance.affiliateCouponCode,
      'affiliateCouponUuid': instance.affiliateCouponUuid,
      'organizationName': instance.organizationName,
      'needToShowInfoModal': instance.needToShowInfoModal,
      'isNumberVerified': instance.isNumberVerified,
      'userTag': instance.userTag,
      'school': instance.school,
      'schoolOrder': instance.schoolOrder,
      'totalCourses': instance.totalCourses,
      'totalBundles': instance.totalBundles,
      'totalCommunities': instance.totalCommunities,
      'totalGroups': instance.totalGroups,
      'totalUnseenNotifications': instance.totalUnseenNotifications,
      'totalUnseenPrivateChatMessages': instance.totalUnseenPrivateChatMessages,
      'totalUnseenGroupChatMessages': instance.totalUnseenGroupChatMessages,
      'addons': instance.addons,
      'studentProfileTabSettings': instance.studentProfileTabSettings,
    };

_$SchoolImpl _$$SchoolImplFromJson(Map<String, dynamic> json) => _$SchoolImpl(
  id: (json['id'] as num).toInt(),
  isPrivateChatEnabled: (json['isPrivateChatEnabled'] as num?)?.toInt() ?? 1,
  meta: json['meta'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$$SchoolImplToJson(_$SchoolImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isPrivateChatEnabled': instance.isPrivateChatEnabled,
      'meta': instance.meta,
    };

_$SchoolOrderImpl _$$SchoolOrderImplFromJson(Map<String, dynamic> json) =>
    _$SchoolOrderImpl(
      id: (json['id'] as num).toInt(),
      plan: json['plan'] as String?,
      interval: json['interval'] as String?,
      currentPeriodEnd: json['currentPeriodEnd'] as String?,
      schoolId: (json['schoolId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SchoolOrderImplToJson(_$SchoolOrderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'plan': instance.plan,
      'interval': instance.interval,
      'currentPeriodEnd': instance.currentPeriodEnd,
      'schoolId': instance.schoolId,
    };

_$AddonsImpl _$$AddonsImplFromJson(Map<String, dynamic> json) => _$AddonsImpl(
  privetChat: json['privetChat'] as bool? ?? false,
  studentChat: json['studentChat'] as bool? ?? false,
  socialNetwork: json['socialNetwork'] as bool? ?? false,
  videoAnalytics: json['videoAnalytics'] as bool? ?? false,
);

Map<String, dynamic> _$$AddonsImplToJson(_$AddonsImpl instance) =>
    <String, dynamic>{
      'privetChat': instance.privetChat,
      'studentChat': instance.studentChat,
      'socialNetwork': instance.socialNetwork,
      'videoAnalytics': instance.videoAnalytics,
    };

_$StudentProfileTabSettingsImpl _$$StudentProfileTabSettingsImplFromJson(
  Map<String, dynamic> json,
) => _$StudentProfileTabSettingsImpl(
  isEnable: json['isEnable'] as bool? ?? false,
  settings: (json['settings'] as List<dynamic>?)
      ?.map((e) => TabSetting.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$$StudentProfileTabSettingsImplToJson(
  _$StudentProfileTabSettingsImpl instance,
) => <String, dynamic>{
  'isEnable': instance.isEnable,
  'settings': instance.settings,
};

_$TabSettingImpl _$$TabSettingImplFromJson(Map<String, dynamic> json) =>
    _$TabSettingImpl(
      settingName: json['settingName'] as String?,
      isEnabled: json['isEnabled'] as bool? ?? false,
      settingKey: json['settingKey'] as String?,
    );

Map<String, dynamic> _$$TabSettingImplToJson(_$TabSettingImpl instance) =>
    <String, dynamic>{
      'settingName': instance.settingName,
      'isEnabled': instance.isEnabled,
      'settingKey': instance.settingKey,
    };
