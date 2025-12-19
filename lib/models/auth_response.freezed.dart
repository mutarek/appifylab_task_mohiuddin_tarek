// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) {
  return _AuthResponse.fromJson(json);
}

/// @nodoc
mixin _$AuthResponse {
  String get token => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

  /// Serializes this AuthResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthResponseCopyWith<AuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthResponseCopyWith<$Res> {
  factory $AuthResponseCopyWith(
    AuthResponse value,
    $Res Function(AuthResponse) then,
  ) = _$AuthResponseCopyWithImpl<$Res, AuthResponse>;
  @useResult
  $Res call({String token, String? type, String? refreshToken, User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$AuthResponseCopyWithImpl<$Res, $Val extends AuthResponse>
    implements $AuthResponseCopyWith<$Res> {
  _$AuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? type = freezed,
    Object? refreshToken = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _value.copyWith(
            token: null == token
                ? _value.token
                : token // ignore: cast_nullable_to_non_nullable
                      as String,
            type: freezed == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String?,
            refreshToken: freezed == refreshToken
                ? _value.refreshToken
                : refreshToken // ignore: cast_nullable_to_non_nullable
                      as String?,
            user: freezed == user
                ? _value.user
                : user // ignore: cast_nullable_to_non_nullable
                      as User?,
          )
          as $Val,
    );
  }

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthResponseImplCopyWith<$Res>
    implements $AuthResponseCopyWith<$Res> {
  factory _$$AuthResponseImplCopyWith(
    _$AuthResponseImpl value,
    $Res Function(_$AuthResponseImpl) then,
  ) = __$$AuthResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String? type, String? refreshToken, User? user});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthResponseImplCopyWithImpl<$Res>
    extends _$AuthResponseCopyWithImpl<$Res, _$AuthResponseImpl>
    implements _$$AuthResponseImplCopyWith<$Res> {
  __$$AuthResponseImplCopyWithImpl(
    _$AuthResponseImpl _value,
    $Res Function(_$AuthResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? type = freezed,
    Object? refreshToken = freezed,
    Object? user = freezed,
  }) {
    return _then(
      _$AuthResponseImpl(
        token: null == token
            ? _value.token
            : token // ignore: cast_nullable_to_non_nullable
                  as String,
        type: freezed == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String?,
        refreshToken: freezed == refreshToken
            ? _value.refreshToken
            : refreshToken // ignore: cast_nullable_to_non_nullable
                  as String?,
        user: freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthResponseImpl implements _AuthResponse {
  const _$AuthResponseImpl({
    required this.token,
    this.type,
    this.refreshToken,
    this.user,
  });

  factory _$AuthResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthResponseImplFromJson(json);

  @override
  final String token;
  @override
  final String? type;
  @override
  final String? refreshToken;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthResponse(token: $token, type: $type, refreshToken: $refreshToken, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthResponseImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, token, type, refreshToken, user);

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      __$$AuthResponseImplCopyWithImpl<_$AuthResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthResponseImplToJson(this);
  }
}

abstract class _AuthResponse implements AuthResponse {
  const factory _AuthResponse({
    required final String token,
    final String? type,
    final String? refreshToken,
    final User? user,
  }) = _$AuthResponseImpl;

  factory _AuthResponse.fromJson(Map<String, dynamic> json) =
      _$AuthResponseImpl.fromJson;

  @override
  String get token;
  @override
  String? get type;
  @override
  String? get refreshToken;
  @override
  User? get user;

  /// Create a copy of AuthResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthResponseImplCopyWith<_$AuthResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;
  int? get canWriteDoc => throw _privateConstructorUsedError;
  String? get isVerified => throw _privateConstructorUsedError;
  int get isApproved => throw _privateConstructorUsedError;
  String? get userType => throw _privateConstructorUsedError;
  String? get createdBy => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  int get isPrivateChat => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  String? get isOnline => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  String? get socialAuthProvider => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int get isSuspended => throw _privateConstructorUsedError;
  String? get pauseDate => throw _privateConstructorUsedError;
  String? get expireDate => throw _privateConstructorUsedError;
  int get canWriteDocDefault => throw _privateConstructorUsedError;
  int? get orderId => throw _privateConstructorUsedError;
  Map<String, dynamic>? get customFields => throw _privateConstructorUsedError;
  int? get isAllowChat => throw _privateConstructorUsedError;
  String? get refId => throw _privateConstructorUsedError;
  int get refCommissionLevel1 => throw _privateConstructorUsedError;
  int get refCommissionLevel2 => throw _privateConstructorUsedError;
  String? get parentRefId => throw _privateConstructorUsedError;
  String? get refComL1ValueType => throw _privateConstructorUsedError;
  String? get refComL2ValueType => throw _privateConstructorUsedError;
  int get refAllowLinkedMembership => throw _privateConstructorUsedError;
  int get isManual => throw _privateConstructorUsedError;
  String? get referredBy => throw _privateConstructorUsedError;
  int get isEligibleForSpecialOffer => throw _privateConstructorUsedError;
  String? get isFoundling => throw _privateConstructorUsedError;
  int? get planId => throw _privateConstructorUsedError;
  int get is2faEnabled => throw _privateConstructorUsedError;
  String? get webpushsub => throw _privateConstructorUsedError;
  int get isForceLogoutEnabled => throw _privateConstructorUsedError;
  String? get payoutPaypalEmail => throw _privateConstructorUsedError;
  int get refPhyCommissionLevel1 => throw _privateConstructorUsedError;
  int get isManualPrivateChat => throw _privateConstructorUsedError;
  String? get refPhyComL1ValueType => throw _privateConstructorUsedError;
  int? get siteOwnerUserId => throw _privateConstructorUsedError;
  int? get ezyAffiliateUserId => throw _privateConstructorUsedError;
  int get stripePayoutEnabled => throw _privateConstructorUsedError;
  String? get signupMethod => throw _privateConstructorUsedError;
  String? get deletedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get signupCustomFieldsResponses =>
      throw _privateConstructorUsedError;
  String? get deletedBy => throw _privateConstructorUsedError;
  int get refPhyCommissionLevel2 => throw _privateConstructorUsedError;
  String? get refPhyComL2ValueType => throw _privateConstructorUsedError;
  int get totalNotiCount => throw _privateConstructorUsedError;
  int get totalChatNotiCount => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  String? get totalSell => throw _privateConstructorUsedError;
  String? get sellerUniqueName => throw _privateConstructorUsedError;
  String? get globeLink => throw _privateConstructorUsedError;
  String? get youtubeLink => throw _privateConstructorUsedError;
  String? get linkedinLink => throw _privateConstructorUsedError;
  String? get facebookLink => throw _privateConstructorUsedError;
  String? get sellerTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_pic')
  String? get coverPic => throw _privateConstructorUsedError;
  String? get affiliateCouponCode => throw _privateConstructorUsedError;
  String? get affiliateCouponUuid => throw _privateConstructorUsedError;
  String? get organizationName => throw _privateConstructorUsedError;
  String? get needToShowInfoModal => throw _privateConstructorUsedError;
  String? get isNumberVerified => throw _privateConstructorUsedError;
  String? get userTag => throw _privateConstructorUsedError;
  School? get school => throw _privateConstructorUsedError;
  SchoolOrder? get schoolOrder => throw _privateConstructorUsedError;
  int get totalCourses => throw _privateConstructorUsedError;
  int get totalBundles => throw _privateConstructorUsedError;
  int get totalCommunities => throw _privateConstructorUsedError;
  int get totalGroups => throw _privateConstructorUsedError;
  int get totalUnseenNotifications => throw _privateConstructorUsedError;
  int get totalUnseenPrivateChatMessages => throw _privateConstructorUsedError;
  int get totalUnseenGroupChatMessages => throw _privateConstructorUsedError;
  Addons? get addons => throw _privateConstructorUsedError;
  StudentProfileTabSettings? get studentProfileTabSettings =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({
    int id,
    String email,
    String? firstName,
    String? lastName,
    String? fullName,
    int? schoolId,
    int? canWriteDoc,
    String? isVerified,
    int isApproved,
    String? userType,
    String? createdBy,
    String? createdAt,
    int isPrivateChat,
    String? updatedAt,
    String? profilePic,
    String? isOnline,
    String? bio,
    int? userId,
    String? socialAuthProvider,
    String? lastLogin,
    String? status,
    int isSuspended,
    String? pauseDate,
    String? expireDate,
    int canWriteDocDefault,
    int? orderId,
    Map<String, dynamic>? customFields,
    int? isAllowChat,
    String? refId,
    int refCommissionLevel1,
    int refCommissionLevel2,
    String? parentRefId,
    String? refComL1ValueType,
    String? refComL2ValueType,
    int refAllowLinkedMembership,
    int isManual,
    String? referredBy,
    int isEligibleForSpecialOffer,
    String? isFoundling,
    int? planId,
    int is2faEnabled,
    String? webpushsub,
    int isForceLogoutEnabled,
    String? payoutPaypalEmail,
    int refPhyCommissionLevel1,
    int isManualPrivateChat,
    String? refPhyComL1ValueType,
    int? siteOwnerUserId,
    int? ezyAffiliateUserId,
    int stripePayoutEnabled,
    String? signupMethod,
    String? deletedAt,
    Map<String, dynamic>? signupCustomFieldsResponses,
    String? deletedBy,
    int refPhyCommissionLevel2,
    String? refPhyComL2ValueType,
    int totalNotiCount,
    int totalChatNotiCount,
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
    int totalCourses,
    int totalBundles,
    int totalCommunities,
    int totalGroups,
    int totalUnseenNotifications,
    int totalUnseenPrivateChatMessages,
    int totalUnseenGroupChatMessages,
    Addons? addons,
    StudentProfileTabSettings? studentProfileTabSettings,
  });

  $SchoolCopyWith<$Res>? get school;
  $SchoolOrderCopyWith<$Res>? get schoolOrder;
  $AddonsCopyWith<$Res>? get addons;
  $StudentProfileTabSettingsCopyWith<$Res>? get studentProfileTabSettings;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? schoolId = freezed,
    Object? canWriteDoc = freezed,
    Object? isVerified = freezed,
    Object? isApproved = null,
    Object? userType = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? isPrivateChat = null,
    Object? updatedAt = freezed,
    Object? profilePic = freezed,
    Object? isOnline = freezed,
    Object? bio = freezed,
    Object? userId = freezed,
    Object? socialAuthProvider = freezed,
    Object? lastLogin = freezed,
    Object? status = freezed,
    Object? isSuspended = null,
    Object? pauseDate = freezed,
    Object? expireDate = freezed,
    Object? canWriteDocDefault = null,
    Object? orderId = freezed,
    Object? customFields = freezed,
    Object? isAllowChat = freezed,
    Object? refId = freezed,
    Object? refCommissionLevel1 = null,
    Object? refCommissionLevel2 = null,
    Object? parentRefId = freezed,
    Object? refComL1ValueType = freezed,
    Object? refComL2ValueType = freezed,
    Object? refAllowLinkedMembership = null,
    Object? isManual = null,
    Object? referredBy = freezed,
    Object? isEligibleForSpecialOffer = null,
    Object? isFoundling = freezed,
    Object? planId = freezed,
    Object? is2faEnabled = null,
    Object? webpushsub = freezed,
    Object? isForceLogoutEnabled = null,
    Object? payoutPaypalEmail = freezed,
    Object? refPhyCommissionLevel1 = null,
    Object? isManualPrivateChat = null,
    Object? refPhyComL1ValueType = freezed,
    Object? siteOwnerUserId = freezed,
    Object? ezyAffiliateUserId = freezed,
    Object? stripePayoutEnabled = null,
    Object? signupMethod = freezed,
    Object? deletedAt = freezed,
    Object? signupCustomFieldsResponses = freezed,
    Object? deletedBy = freezed,
    Object? refPhyCommissionLevel2 = null,
    Object? refPhyComL2ValueType = freezed,
    Object? totalNotiCount = null,
    Object? totalChatNotiCount = null,
    Object? aboutMe = freezed,
    Object? totalSell = freezed,
    Object? sellerUniqueName = freezed,
    Object? globeLink = freezed,
    Object? youtubeLink = freezed,
    Object? linkedinLink = freezed,
    Object? facebookLink = freezed,
    Object? sellerTitle = freezed,
    Object? coverPic = freezed,
    Object? affiliateCouponCode = freezed,
    Object? affiliateCouponUuid = freezed,
    Object? organizationName = freezed,
    Object? needToShowInfoModal = freezed,
    Object? isNumberVerified = freezed,
    Object? userTag = freezed,
    Object? school = freezed,
    Object? schoolOrder = freezed,
    Object? totalCourses = null,
    Object? totalBundles = null,
    Object? totalCommunities = null,
    Object? totalGroups = null,
    Object? totalUnseenNotifications = null,
    Object? totalUnseenPrivateChatMessages = null,
    Object? totalUnseenGroupChatMessages = null,
    Object? addons = freezed,
    Object? studentProfileTabSettings = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            email: null == email
                ? _value.email
                : email // ignore: cast_nullable_to_non_nullable
                      as String,
            firstName: freezed == firstName
                ? _value.firstName
                : firstName // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastName: freezed == lastName
                ? _value.lastName
                : lastName // ignore: cast_nullable_to_non_nullable
                      as String?,
            fullName: freezed == fullName
                ? _value.fullName
                : fullName // ignore: cast_nullable_to_non_nullable
                      as String?,
            schoolId: freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                      as int?,
            canWriteDoc: freezed == canWriteDoc
                ? _value.canWriteDoc
                : canWriteDoc // ignore: cast_nullable_to_non_nullable
                      as int?,
            isVerified: freezed == isVerified
                ? _value.isVerified
                : isVerified // ignore: cast_nullable_to_non_nullable
                      as String?,
            isApproved: null == isApproved
                ? _value.isApproved
                : isApproved // ignore: cast_nullable_to_non_nullable
                      as int,
            userType: freezed == userType
                ? _value.userType
                : userType // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdBy: freezed == createdBy
                ? _value.createdBy
                : createdBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            createdAt: freezed == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            isPrivateChat: null == isPrivateChat
                ? _value.isPrivateChat
                : isPrivateChat // ignore: cast_nullable_to_non_nullable
                      as int,
            updatedAt: freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as String?,
            isOnline: freezed == isOnline
                ? _value.isOnline
                : isOnline // ignore: cast_nullable_to_non_nullable
                      as String?,
            bio: freezed == bio
                ? _value.bio
                : bio // ignore: cast_nullable_to_non_nullable
                      as String?,
            userId: freezed == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                      as int?,
            socialAuthProvider: freezed == socialAuthProvider
                ? _value.socialAuthProvider
                : socialAuthProvider // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastLogin: freezed == lastLogin
                ? _value.lastLogin
                : lastLogin // ignore: cast_nullable_to_non_nullable
                      as String?,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            isSuspended: null == isSuspended
                ? _value.isSuspended
                : isSuspended // ignore: cast_nullable_to_non_nullable
                      as int,
            pauseDate: freezed == pauseDate
                ? _value.pauseDate
                : pauseDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            expireDate: freezed == expireDate
                ? _value.expireDate
                : expireDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            canWriteDocDefault: null == canWriteDocDefault
                ? _value.canWriteDocDefault
                : canWriteDocDefault // ignore: cast_nullable_to_non_nullable
                      as int,
            orderId: freezed == orderId
                ? _value.orderId
                : orderId // ignore: cast_nullable_to_non_nullable
                      as int?,
            customFields: freezed == customFields
                ? _value.customFields
                : customFields // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            isAllowChat: freezed == isAllowChat
                ? _value.isAllowChat
                : isAllowChat // ignore: cast_nullable_to_non_nullable
                      as int?,
            refId: freezed == refId
                ? _value.refId
                : refId // ignore: cast_nullable_to_non_nullable
                      as String?,
            refCommissionLevel1: null == refCommissionLevel1
                ? _value.refCommissionLevel1
                : refCommissionLevel1 // ignore: cast_nullable_to_non_nullable
                      as int,
            refCommissionLevel2: null == refCommissionLevel2
                ? _value.refCommissionLevel2
                : refCommissionLevel2 // ignore: cast_nullable_to_non_nullable
                      as int,
            parentRefId: freezed == parentRefId
                ? _value.parentRefId
                : parentRefId // ignore: cast_nullable_to_non_nullable
                      as String?,
            refComL1ValueType: freezed == refComL1ValueType
                ? _value.refComL1ValueType
                : refComL1ValueType // ignore: cast_nullable_to_non_nullable
                      as String?,
            refComL2ValueType: freezed == refComL2ValueType
                ? _value.refComL2ValueType
                : refComL2ValueType // ignore: cast_nullable_to_non_nullable
                      as String?,
            refAllowLinkedMembership: null == refAllowLinkedMembership
                ? _value.refAllowLinkedMembership
                : refAllowLinkedMembership // ignore: cast_nullable_to_non_nullable
                      as int,
            isManual: null == isManual
                ? _value.isManual
                : isManual // ignore: cast_nullable_to_non_nullable
                      as int,
            referredBy: freezed == referredBy
                ? _value.referredBy
                : referredBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            isEligibleForSpecialOffer: null == isEligibleForSpecialOffer
                ? _value.isEligibleForSpecialOffer
                : isEligibleForSpecialOffer // ignore: cast_nullable_to_non_nullable
                      as int,
            isFoundling: freezed == isFoundling
                ? _value.isFoundling
                : isFoundling // ignore: cast_nullable_to_non_nullable
                      as String?,
            planId: freezed == planId
                ? _value.planId
                : planId // ignore: cast_nullable_to_non_nullable
                      as int?,
            is2faEnabled: null == is2faEnabled
                ? _value.is2faEnabled
                : is2faEnabled // ignore: cast_nullable_to_non_nullable
                      as int,
            webpushsub: freezed == webpushsub
                ? _value.webpushsub
                : webpushsub // ignore: cast_nullable_to_non_nullable
                      as String?,
            isForceLogoutEnabled: null == isForceLogoutEnabled
                ? _value.isForceLogoutEnabled
                : isForceLogoutEnabled // ignore: cast_nullable_to_non_nullable
                      as int,
            payoutPaypalEmail: freezed == payoutPaypalEmail
                ? _value.payoutPaypalEmail
                : payoutPaypalEmail // ignore: cast_nullable_to_non_nullable
                      as String?,
            refPhyCommissionLevel1: null == refPhyCommissionLevel1
                ? _value.refPhyCommissionLevel1
                : refPhyCommissionLevel1 // ignore: cast_nullable_to_non_nullable
                      as int,
            isManualPrivateChat: null == isManualPrivateChat
                ? _value.isManualPrivateChat
                : isManualPrivateChat // ignore: cast_nullable_to_non_nullable
                      as int,
            refPhyComL1ValueType: freezed == refPhyComL1ValueType
                ? _value.refPhyComL1ValueType
                : refPhyComL1ValueType // ignore: cast_nullable_to_non_nullable
                      as String?,
            siteOwnerUserId: freezed == siteOwnerUserId
                ? _value.siteOwnerUserId
                : siteOwnerUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            ezyAffiliateUserId: freezed == ezyAffiliateUserId
                ? _value.ezyAffiliateUserId
                : ezyAffiliateUserId // ignore: cast_nullable_to_non_nullable
                      as int?,
            stripePayoutEnabled: null == stripePayoutEnabled
                ? _value.stripePayoutEnabled
                : stripePayoutEnabled // ignore: cast_nullable_to_non_nullable
                      as int,
            signupMethod: freezed == signupMethod
                ? _value.signupMethod
                : signupMethod // ignore: cast_nullable_to_non_nullable
                      as String?,
            deletedAt: freezed == deletedAt
                ? _value.deletedAt
                : deletedAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            signupCustomFieldsResponses: freezed == signupCustomFieldsResponses
                ? _value.signupCustomFieldsResponses
                : signupCustomFieldsResponses // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
            deletedBy: freezed == deletedBy
                ? _value.deletedBy
                : deletedBy // ignore: cast_nullable_to_non_nullable
                      as String?,
            refPhyCommissionLevel2: null == refPhyCommissionLevel2
                ? _value.refPhyCommissionLevel2
                : refPhyCommissionLevel2 // ignore: cast_nullable_to_non_nullable
                      as int,
            refPhyComL2ValueType: freezed == refPhyComL2ValueType
                ? _value.refPhyComL2ValueType
                : refPhyComL2ValueType // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalNotiCount: null == totalNotiCount
                ? _value.totalNotiCount
                : totalNotiCount // ignore: cast_nullable_to_non_nullable
                      as int,
            totalChatNotiCount: null == totalChatNotiCount
                ? _value.totalChatNotiCount
                : totalChatNotiCount // ignore: cast_nullable_to_non_nullable
                      as int,
            aboutMe: freezed == aboutMe
                ? _value.aboutMe
                : aboutMe // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalSell: freezed == totalSell
                ? _value.totalSell
                : totalSell // ignore: cast_nullable_to_non_nullable
                      as String?,
            sellerUniqueName: freezed == sellerUniqueName
                ? _value.sellerUniqueName
                : sellerUniqueName // ignore: cast_nullable_to_non_nullable
                      as String?,
            globeLink: freezed == globeLink
                ? _value.globeLink
                : globeLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            youtubeLink: freezed == youtubeLink
                ? _value.youtubeLink
                : youtubeLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            linkedinLink: freezed == linkedinLink
                ? _value.linkedinLink
                : linkedinLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            facebookLink: freezed == facebookLink
                ? _value.facebookLink
                : facebookLink // ignore: cast_nullable_to_non_nullable
                      as String?,
            sellerTitle: freezed == sellerTitle
                ? _value.sellerTitle
                : sellerTitle // ignore: cast_nullable_to_non_nullable
                      as String?,
            coverPic: freezed == coverPic
                ? _value.coverPic
                : coverPic // ignore: cast_nullable_to_non_nullable
                      as String?,
            affiliateCouponCode: freezed == affiliateCouponCode
                ? _value.affiliateCouponCode
                : affiliateCouponCode // ignore: cast_nullable_to_non_nullable
                      as String?,
            affiliateCouponUuid: freezed == affiliateCouponUuid
                ? _value.affiliateCouponUuid
                : affiliateCouponUuid // ignore: cast_nullable_to_non_nullable
                      as String?,
            organizationName: freezed == organizationName
                ? _value.organizationName
                : organizationName // ignore: cast_nullable_to_non_nullable
                      as String?,
            needToShowInfoModal: freezed == needToShowInfoModal
                ? _value.needToShowInfoModal
                : needToShowInfoModal // ignore: cast_nullable_to_non_nullable
                      as String?,
            isNumberVerified: freezed == isNumberVerified
                ? _value.isNumberVerified
                : isNumberVerified // ignore: cast_nullable_to_non_nullable
                      as String?,
            userTag: freezed == userTag
                ? _value.userTag
                : userTag // ignore: cast_nullable_to_non_nullable
                      as String?,
            school: freezed == school
                ? _value.school
                : school // ignore: cast_nullable_to_non_nullable
                      as School?,
            schoolOrder: freezed == schoolOrder
                ? _value.schoolOrder
                : schoolOrder // ignore: cast_nullable_to_non_nullable
                      as SchoolOrder?,
            totalCourses: null == totalCourses
                ? _value.totalCourses
                : totalCourses // ignore: cast_nullable_to_non_nullable
                      as int,
            totalBundles: null == totalBundles
                ? _value.totalBundles
                : totalBundles // ignore: cast_nullable_to_non_nullable
                      as int,
            totalCommunities: null == totalCommunities
                ? _value.totalCommunities
                : totalCommunities // ignore: cast_nullable_to_non_nullable
                      as int,
            totalGroups: null == totalGroups
                ? _value.totalGroups
                : totalGroups // ignore: cast_nullable_to_non_nullable
                      as int,
            totalUnseenNotifications: null == totalUnseenNotifications
                ? _value.totalUnseenNotifications
                : totalUnseenNotifications // ignore: cast_nullable_to_non_nullable
                      as int,
            totalUnseenPrivateChatMessages:
                null == totalUnseenPrivateChatMessages
                ? _value.totalUnseenPrivateChatMessages
                : totalUnseenPrivateChatMessages // ignore: cast_nullable_to_non_nullable
                      as int,
            totalUnseenGroupChatMessages: null == totalUnseenGroupChatMessages
                ? _value.totalUnseenGroupChatMessages
                : totalUnseenGroupChatMessages // ignore: cast_nullable_to_non_nullable
                      as int,
            addons: freezed == addons
                ? _value.addons
                : addons // ignore: cast_nullable_to_non_nullable
                      as Addons?,
            studentProfileTabSettings: freezed == studentProfileTabSettings
                ? _value.studentProfileTabSettings
                : studentProfileTabSettings // ignore: cast_nullable_to_non_nullable
                      as StudentProfileTabSettings?,
          )
          as $Val,
    );
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolCopyWith<$Res>? get school {
    if (_value.school == null) {
      return null;
    }

    return $SchoolCopyWith<$Res>(_value.school!, (value) {
      return _then(_value.copyWith(school: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SchoolOrderCopyWith<$Res>? get schoolOrder {
    if (_value.schoolOrder == null) {
      return null;
    }

    return $SchoolOrderCopyWith<$Res>(_value.schoolOrder!, (value) {
      return _then(_value.copyWith(schoolOrder: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddonsCopyWith<$Res>? get addons {
    if (_value.addons == null) {
      return null;
    }

    return $AddonsCopyWith<$Res>(_value.addons!, (value) {
      return _then(_value.copyWith(addons: value) as $Val);
    });
  }

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $StudentProfileTabSettingsCopyWith<$Res>? get studentProfileTabSettings {
    if (_value.studentProfileTabSettings == null) {
      return null;
    }

    return $StudentProfileTabSettingsCopyWith<$Res>(
      _value.studentProfileTabSettings!,
      (value) {
        return _then(_value.copyWith(studentProfileTabSettings: value) as $Val);
      },
    );
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
    _$UserImpl value,
    $Res Function(_$UserImpl) then,
  ) = __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String email,
    String? firstName,
    String? lastName,
    String? fullName,
    int? schoolId,
    int? canWriteDoc,
    String? isVerified,
    int isApproved,
    String? userType,
    String? createdBy,
    String? createdAt,
    int isPrivateChat,
    String? updatedAt,
    String? profilePic,
    String? isOnline,
    String? bio,
    int? userId,
    String? socialAuthProvider,
    String? lastLogin,
    String? status,
    int isSuspended,
    String? pauseDate,
    String? expireDate,
    int canWriteDocDefault,
    int? orderId,
    Map<String, dynamic>? customFields,
    int? isAllowChat,
    String? refId,
    int refCommissionLevel1,
    int refCommissionLevel2,
    String? parentRefId,
    String? refComL1ValueType,
    String? refComL2ValueType,
    int refAllowLinkedMembership,
    int isManual,
    String? referredBy,
    int isEligibleForSpecialOffer,
    String? isFoundling,
    int? planId,
    int is2faEnabled,
    String? webpushsub,
    int isForceLogoutEnabled,
    String? payoutPaypalEmail,
    int refPhyCommissionLevel1,
    int isManualPrivateChat,
    String? refPhyComL1ValueType,
    int? siteOwnerUserId,
    int? ezyAffiliateUserId,
    int stripePayoutEnabled,
    String? signupMethod,
    String? deletedAt,
    Map<String, dynamic>? signupCustomFieldsResponses,
    String? deletedBy,
    int refPhyCommissionLevel2,
    String? refPhyComL2ValueType,
    int totalNotiCount,
    int totalChatNotiCount,
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
    int totalCourses,
    int totalBundles,
    int totalCommunities,
    int totalGroups,
    int totalUnseenNotifications,
    int totalUnseenPrivateChatMessages,
    int totalUnseenGroupChatMessages,
    Addons? addons,
    StudentProfileTabSettings? studentProfileTabSettings,
  });

  @override
  $SchoolCopyWith<$Res>? get school;
  @override
  $SchoolOrderCopyWith<$Res>? get schoolOrder;
  @override
  $AddonsCopyWith<$Res>? get addons;
  @override
  $StudentProfileTabSettingsCopyWith<$Res>? get studentProfileTabSettings;
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
    : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? schoolId = freezed,
    Object? canWriteDoc = freezed,
    Object? isVerified = freezed,
    Object? isApproved = null,
    Object? userType = freezed,
    Object? createdBy = freezed,
    Object? createdAt = freezed,
    Object? isPrivateChat = null,
    Object? updatedAt = freezed,
    Object? profilePic = freezed,
    Object? isOnline = freezed,
    Object? bio = freezed,
    Object? userId = freezed,
    Object? socialAuthProvider = freezed,
    Object? lastLogin = freezed,
    Object? status = freezed,
    Object? isSuspended = null,
    Object? pauseDate = freezed,
    Object? expireDate = freezed,
    Object? canWriteDocDefault = null,
    Object? orderId = freezed,
    Object? customFields = freezed,
    Object? isAllowChat = freezed,
    Object? refId = freezed,
    Object? refCommissionLevel1 = null,
    Object? refCommissionLevel2 = null,
    Object? parentRefId = freezed,
    Object? refComL1ValueType = freezed,
    Object? refComL2ValueType = freezed,
    Object? refAllowLinkedMembership = null,
    Object? isManual = null,
    Object? referredBy = freezed,
    Object? isEligibleForSpecialOffer = null,
    Object? isFoundling = freezed,
    Object? planId = freezed,
    Object? is2faEnabled = null,
    Object? webpushsub = freezed,
    Object? isForceLogoutEnabled = null,
    Object? payoutPaypalEmail = freezed,
    Object? refPhyCommissionLevel1 = null,
    Object? isManualPrivateChat = null,
    Object? refPhyComL1ValueType = freezed,
    Object? siteOwnerUserId = freezed,
    Object? ezyAffiliateUserId = freezed,
    Object? stripePayoutEnabled = null,
    Object? signupMethod = freezed,
    Object? deletedAt = freezed,
    Object? signupCustomFieldsResponses = freezed,
    Object? deletedBy = freezed,
    Object? refPhyCommissionLevel2 = null,
    Object? refPhyComL2ValueType = freezed,
    Object? totalNotiCount = null,
    Object? totalChatNotiCount = null,
    Object? aboutMe = freezed,
    Object? totalSell = freezed,
    Object? sellerUniqueName = freezed,
    Object? globeLink = freezed,
    Object? youtubeLink = freezed,
    Object? linkedinLink = freezed,
    Object? facebookLink = freezed,
    Object? sellerTitle = freezed,
    Object? coverPic = freezed,
    Object? affiliateCouponCode = freezed,
    Object? affiliateCouponUuid = freezed,
    Object? organizationName = freezed,
    Object? needToShowInfoModal = freezed,
    Object? isNumberVerified = freezed,
    Object? userTag = freezed,
    Object? school = freezed,
    Object? schoolOrder = freezed,
    Object? totalCourses = null,
    Object? totalBundles = null,
    Object? totalCommunities = null,
    Object? totalGroups = null,
    Object? totalUnseenNotifications = null,
    Object? totalUnseenPrivateChatMessages = null,
    Object? totalUnseenGroupChatMessages = null,
    Object? addons = freezed,
    Object? studentProfileTabSettings = freezed,
  }) {
    return _then(
      _$UserImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        firstName: freezed == firstName
            ? _value.firstName
            : firstName // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastName: freezed == lastName
            ? _value.lastName
            : lastName // ignore: cast_nullable_to_non_nullable
                  as String?,
        fullName: freezed == fullName
            ? _value.fullName
            : fullName // ignore: cast_nullable_to_non_nullable
                  as String?,
        schoolId: freezed == schoolId
            ? _value.schoolId
            : schoolId // ignore: cast_nullable_to_non_nullable
                  as int?,
        canWriteDoc: freezed == canWriteDoc
            ? _value.canWriteDoc
            : canWriteDoc // ignore: cast_nullable_to_non_nullable
                  as int?,
        isVerified: freezed == isVerified
            ? _value.isVerified
            : isVerified // ignore: cast_nullable_to_non_nullable
                  as String?,
        isApproved: null == isApproved
            ? _value.isApproved
            : isApproved // ignore: cast_nullable_to_non_nullable
                  as int,
        userType: freezed == userType
            ? _value.userType
            : userType // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdBy: freezed == createdBy
            ? _value.createdBy
            : createdBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        createdAt: freezed == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        isPrivateChat: null == isPrivateChat
            ? _value.isPrivateChat
            : isPrivateChat // ignore: cast_nullable_to_non_nullable
                  as int,
        updatedAt: freezed == updatedAt
            ? _value.updatedAt
            : updatedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as String?,
        isOnline: freezed == isOnline
            ? _value.isOnline
            : isOnline // ignore: cast_nullable_to_non_nullable
                  as String?,
        bio: freezed == bio
            ? _value.bio
            : bio // ignore: cast_nullable_to_non_nullable
                  as String?,
        userId: freezed == userId
            ? _value.userId
            : userId // ignore: cast_nullable_to_non_nullable
                  as int?,
        socialAuthProvider: freezed == socialAuthProvider
            ? _value.socialAuthProvider
            : socialAuthProvider // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastLogin: freezed == lastLogin
            ? _value.lastLogin
            : lastLogin // ignore: cast_nullable_to_non_nullable
                  as String?,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        isSuspended: null == isSuspended
            ? _value.isSuspended
            : isSuspended // ignore: cast_nullable_to_non_nullable
                  as int,
        pauseDate: freezed == pauseDate
            ? _value.pauseDate
            : pauseDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        expireDate: freezed == expireDate
            ? _value.expireDate
            : expireDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        canWriteDocDefault: null == canWriteDocDefault
            ? _value.canWriteDocDefault
            : canWriteDocDefault // ignore: cast_nullable_to_non_nullable
                  as int,
        orderId: freezed == orderId
            ? _value.orderId
            : orderId // ignore: cast_nullable_to_non_nullable
                  as int?,
        customFields: freezed == customFields
            ? _value._customFields
            : customFields // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        isAllowChat: freezed == isAllowChat
            ? _value.isAllowChat
            : isAllowChat // ignore: cast_nullable_to_non_nullable
                  as int?,
        refId: freezed == refId
            ? _value.refId
            : refId // ignore: cast_nullable_to_non_nullable
                  as String?,
        refCommissionLevel1: null == refCommissionLevel1
            ? _value.refCommissionLevel1
            : refCommissionLevel1 // ignore: cast_nullable_to_non_nullable
                  as int,
        refCommissionLevel2: null == refCommissionLevel2
            ? _value.refCommissionLevel2
            : refCommissionLevel2 // ignore: cast_nullable_to_non_nullable
                  as int,
        parentRefId: freezed == parentRefId
            ? _value.parentRefId
            : parentRefId // ignore: cast_nullable_to_non_nullable
                  as String?,
        refComL1ValueType: freezed == refComL1ValueType
            ? _value.refComL1ValueType
            : refComL1ValueType // ignore: cast_nullable_to_non_nullable
                  as String?,
        refComL2ValueType: freezed == refComL2ValueType
            ? _value.refComL2ValueType
            : refComL2ValueType // ignore: cast_nullable_to_non_nullable
                  as String?,
        refAllowLinkedMembership: null == refAllowLinkedMembership
            ? _value.refAllowLinkedMembership
            : refAllowLinkedMembership // ignore: cast_nullable_to_non_nullable
                  as int,
        isManual: null == isManual
            ? _value.isManual
            : isManual // ignore: cast_nullable_to_non_nullable
                  as int,
        referredBy: freezed == referredBy
            ? _value.referredBy
            : referredBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        isEligibleForSpecialOffer: null == isEligibleForSpecialOffer
            ? _value.isEligibleForSpecialOffer
            : isEligibleForSpecialOffer // ignore: cast_nullable_to_non_nullable
                  as int,
        isFoundling: freezed == isFoundling
            ? _value.isFoundling
            : isFoundling // ignore: cast_nullable_to_non_nullable
                  as String?,
        planId: freezed == planId
            ? _value.planId
            : planId // ignore: cast_nullable_to_non_nullable
                  as int?,
        is2faEnabled: null == is2faEnabled
            ? _value.is2faEnabled
            : is2faEnabled // ignore: cast_nullable_to_non_nullable
                  as int,
        webpushsub: freezed == webpushsub
            ? _value.webpushsub
            : webpushsub // ignore: cast_nullable_to_non_nullable
                  as String?,
        isForceLogoutEnabled: null == isForceLogoutEnabled
            ? _value.isForceLogoutEnabled
            : isForceLogoutEnabled // ignore: cast_nullable_to_non_nullable
                  as int,
        payoutPaypalEmail: freezed == payoutPaypalEmail
            ? _value.payoutPaypalEmail
            : payoutPaypalEmail // ignore: cast_nullable_to_non_nullable
                  as String?,
        refPhyCommissionLevel1: null == refPhyCommissionLevel1
            ? _value.refPhyCommissionLevel1
            : refPhyCommissionLevel1 // ignore: cast_nullable_to_non_nullable
                  as int,
        isManualPrivateChat: null == isManualPrivateChat
            ? _value.isManualPrivateChat
            : isManualPrivateChat // ignore: cast_nullable_to_non_nullable
                  as int,
        refPhyComL1ValueType: freezed == refPhyComL1ValueType
            ? _value.refPhyComL1ValueType
            : refPhyComL1ValueType // ignore: cast_nullable_to_non_nullable
                  as String?,
        siteOwnerUserId: freezed == siteOwnerUserId
            ? _value.siteOwnerUserId
            : siteOwnerUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        ezyAffiliateUserId: freezed == ezyAffiliateUserId
            ? _value.ezyAffiliateUserId
            : ezyAffiliateUserId // ignore: cast_nullable_to_non_nullable
                  as int?,
        stripePayoutEnabled: null == stripePayoutEnabled
            ? _value.stripePayoutEnabled
            : stripePayoutEnabled // ignore: cast_nullable_to_non_nullable
                  as int,
        signupMethod: freezed == signupMethod
            ? _value.signupMethod
            : signupMethod // ignore: cast_nullable_to_non_nullable
                  as String?,
        deletedAt: freezed == deletedAt
            ? _value.deletedAt
            : deletedAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        signupCustomFieldsResponses: freezed == signupCustomFieldsResponses
            ? _value._signupCustomFieldsResponses
            : signupCustomFieldsResponses // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
        deletedBy: freezed == deletedBy
            ? _value.deletedBy
            : deletedBy // ignore: cast_nullable_to_non_nullable
                  as String?,
        refPhyCommissionLevel2: null == refPhyCommissionLevel2
            ? _value.refPhyCommissionLevel2
            : refPhyCommissionLevel2 // ignore: cast_nullable_to_non_nullable
                  as int,
        refPhyComL2ValueType: freezed == refPhyComL2ValueType
            ? _value.refPhyComL2ValueType
            : refPhyComL2ValueType // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalNotiCount: null == totalNotiCount
            ? _value.totalNotiCount
            : totalNotiCount // ignore: cast_nullable_to_non_nullable
                  as int,
        totalChatNotiCount: null == totalChatNotiCount
            ? _value.totalChatNotiCount
            : totalChatNotiCount // ignore: cast_nullable_to_non_nullable
                  as int,
        aboutMe: freezed == aboutMe
            ? _value.aboutMe
            : aboutMe // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalSell: freezed == totalSell
            ? _value.totalSell
            : totalSell // ignore: cast_nullable_to_non_nullable
                  as String?,
        sellerUniqueName: freezed == sellerUniqueName
            ? _value.sellerUniqueName
            : sellerUniqueName // ignore: cast_nullable_to_non_nullable
                  as String?,
        globeLink: freezed == globeLink
            ? _value.globeLink
            : globeLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        youtubeLink: freezed == youtubeLink
            ? _value.youtubeLink
            : youtubeLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        linkedinLink: freezed == linkedinLink
            ? _value.linkedinLink
            : linkedinLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        facebookLink: freezed == facebookLink
            ? _value.facebookLink
            : facebookLink // ignore: cast_nullable_to_non_nullable
                  as String?,
        sellerTitle: freezed == sellerTitle
            ? _value.sellerTitle
            : sellerTitle // ignore: cast_nullable_to_non_nullable
                  as String?,
        coverPic: freezed == coverPic
            ? _value.coverPic
            : coverPic // ignore: cast_nullable_to_non_nullable
                  as String?,
        affiliateCouponCode: freezed == affiliateCouponCode
            ? _value.affiliateCouponCode
            : affiliateCouponCode // ignore: cast_nullable_to_non_nullable
                  as String?,
        affiliateCouponUuid: freezed == affiliateCouponUuid
            ? _value.affiliateCouponUuid
            : affiliateCouponUuid // ignore: cast_nullable_to_non_nullable
                  as String?,
        organizationName: freezed == organizationName
            ? _value.organizationName
            : organizationName // ignore: cast_nullable_to_non_nullable
                  as String?,
        needToShowInfoModal: freezed == needToShowInfoModal
            ? _value.needToShowInfoModal
            : needToShowInfoModal // ignore: cast_nullable_to_non_nullable
                  as String?,
        isNumberVerified: freezed == isNumberVerified
            ? _value.isNumberVerified
            : isNumberVerified // ignore: cast_nullable_to_non_nullable
                  as String?,
        userTag: freezed == userTag
            ? _value.userTag
            : userTag // ignore: cast_nullable_to_non_nullable
                  as String?,
        school: freezed == school
            ? _value.school
            : school // ignore: cast_nullable_to_non_nullable
                  as School?,
        schoolOrder: freezed == schoolOrder
            ? _value.schoolOrder
            : schoolOrder // ignore: cast_nullable_to_non_nullable
                  as SchoolOrder?,
        totalCourses: null == totalCourses
            ? _value.totalCourses
            : totalCourses // ignore: cast_nullable_to_non_nullable
                  as int,
        totalBundles: null == totalBundles
            ? _value.totalBundles
            : totalBundles // ignore: cast_nullable_to_non_nullable
                  as int,
        totalCommunities: null == totalCommunities
            ? _value.totalCommunities
            : totalCommunities // ignore: cast_nullable_to_non_nullable
                  as int,
        totalGroups: null == totalGroups
            ? _value.totalGroups
            : totalGroups // ignore: cast_nullable_to_non_nullable
                  as int,
        totalUnseenNotifications: null == totalUnseenNotifications
            ? _value.totalUnseenNotifications
            : totalUnseenNotifications // ignore: cast_nullable_to_non_nullable
                  as int,
        totalUnseenPrivateChatMessages: null == totalUnseenPrivateChatMessages
            ? _value.totalUnseenPrivateChatMessages
            : totalUnseenPrivateChatMessages // ignore: cast_nullable_to_non_nullable
                  as int,
        totalUnseenGroupChatMessages: null == totalUnseenGroupChatMessages
            ? _value.totalUnseenGroupChatMessages
            : totalUnseenGroupChatMessages // ignore: cast_nullable_to_non_nullable
                  as int,
        addons: freezed == addons
            ? _value.addons
            : addons // ignore: cast_nullable_to_non_nullable
                  as Addons?,
        studentProfileTabSettings: freezed == studentProfileTabSettings
            ? _value.studentProfileTabSettings
            : studentProfileTabSettings // ignore: cast_nullable_to_non_nullable
                  as StudentProfileTabSettings?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl({
    required this.id,
    required this.email,
    this.firstName,
    this.lastName,
    this.fullName,
    this.schoolId,
    this.canWriteDoc,
    this.isVerified,
    this.isApproved = 1,
    this.userType,
    this.createdBy,
    this.createdAt,
    this.isPrivateChat = 0,
    this.updatedAt,
    this.profilePic,
    this.isOnline,
    this.bio,
    this.userId,
    this.socialAuthProvider,
    this.lastLogin,
    this.status,
    this.isSuspended = 0,
    this.pauseDate,
    this.expireDate,
    this.canWriteDocDefault = 0,
    this.orderId,
    final Map<String, dynamic>? customFields,
    this.isAllowChat,
    this.refId,
    this.refCommissionLevel1 = 0,
    this.refCommissionLevel2 = 0,
    this.parentRefId,
    this.refComL1ValueType,
    this.refComL2ValueType,
    this.refAllowLinkedMembership = 0,
    this.isManual = 1,
    this.referredBy,
    this.isEligibleForSpecialOffer = 0,
    this.isFoundling,
    this.planId,
    this.is2faEnabled = 0,
    this.webpushsub,
    this.isForceLogoutEnabled = 0,
    this.payoutPaypalEmail,
    this.refPhyCommissionLevel1 = 0,
    this.isManualPrivateChat = 0,
    this.refPhyComL1ValueType,
    this.siteOwnerUserId,
    this.ezyAffiliateUserId,
    this.stripePayoutEnabled = 0,
    this.signupMethod,
    this.deletedAt,
    final Map<String, dynamic>? signupCustomFieldsResponses,
    this.deletedBy,
    this.refPhyCommissionLevel2 = 0,
    this.refPhyComL2ValueType,
    this.totalNotiCount = 0,
    this.totalChatNotiCount = 0,
    this.aboutMe,
    this.totalSell,
    this.sellerUniqueName,
    this.globeLink,
    this.youtubeLink,
    this.linkedinLink,
    this.facebookLink,
    this.sellerTitle,
    @JsonKey(name: 'cover_pic') this.coverPic,
    this.affiliateCouponCode,
    this.affiliateCouponUuid,
    this.organizationName,
    this.needToShowInfoModal,
    this.isNumberVerified,
    this.userTag,
    this.school,
    this.schoolOrder,
    this.totalCourses = 0,
    this.totalBundles = 0,
    this.totalCommunities = 0,
    this.totalGroups = 0,
    this.totalUnseenNotifications = 0,
    this.totalUnseenPrivateChatMessages = 0,
    this.totalUnseenGroupChatMessages = 0,
    this.addons,
    this.studentProfileTabSettings,
  }) : _customFields = customFields,
       _signupCustomFieldsResponses = signupCustomFieldsResponses;

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String email;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? fullName;
  @override
  final int? schoolId;
  @override
  final int? canWriteDoc;
  @override
  final String? isVerified;
  @override
  @JsonKey()
  final int isApproved;
  @override
  final String? userType;
  @override
  final String? createdBy;
  @override
  final String? createdAt;
  @override
  @JsonKey()
  final int isPrivateChat;
  @override
  final String? updatedAt;
  @override
  final String? profilePic;
  @override
  final String? isOnline;
  @override
  final String? bio;
  @override
  final int? userId;
  @override
  final String? socialAuthProvider;
  @override
  final String? lastLogin;
  @override
  final String? status;
  @override
  @JsonKey()
  final int isSuspended;
  @override
  final String? pauseDate;
  @override
  final String? expireDate;
  @override
  @JsonKey()
  final int canWriteDocDefault;
  @override
  final int? orderId;
  final Map<String, dynamic>? _customFields;
  @override
  Map<String, dynamic>? get customFields {
    final value = _customFields;
    if (value == null) return null;
    if (_customFields is EqualUnmodifiableMapView) return _customFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final int? isAllowChat;
  @override
  final String? refId;
  @override
  @JsonKey()
  final int refCommissionLevel1;
  @override
  @JsonKey()
  final int refCommissionLevel2;
  @override
  final String? parentRefId;
  @override
  final String? refComL1ValueType;
  @override
  final String? refComL2ValueType;
  @override
  @JsonKey()
  final int refAllowLinkedMembership;
  @override
  @JsonKey()
  final int isManual;
  @override
  final String? referredBy;
  @override
  @JsonKey()
  final int isEligibleForSpecialOffer;
  @override
  final String? isFoundling;
  @override
  final int? planId;
  @override
  @JsonKey()
  final int is2faEnabled;
  @override
  final String? webpushsub;
  @override
  @JsonKey()
  final int isForceLogoutEnabled;
  @override
  final String? payoutPaypalEmail;
  @override
  @JsonKey()
  final int refPhyCommissionLevel1;
  @override
  @JsonKey()
  final int isManualPrivateChat;
  @override
  final String? refPhyComL1ValueType;
  @override
  final int? siteOwnerUserId;
  @override
  final int? ezyAffiliateUserId;
  @override
  @JsonKey()
  final int stripePayoutEnabled;
  @override
  final String? signupMethod;
  @override
  final String? deletedAt;
  final Map<String, dynamic>? _signupCustomFieldsResponses;
  @override
  Map<String, dynamic>? get signupCustomFieldsResponses {
    final value = _signupCustomFieldsResponses;
    if (value == null) return null;
    if (_signupCustomFieldsResponses is EqualUnmodifiableMapView)
      return _signupCustomFieldsResponses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final String? deletedBy;
  @override
  @JsonKey()
  final int refPhyCommissionLevel2;
  @override
  final String? refPhyComL2ValueType;
  @override
  @JsonKey()
  final int totalNotiCount;
  @override
  @JsonKey()
  final int totalChatNotiCount;
  @override
  final String? aboutMe;
  @override
  final String? totalSell;
  @override
  final String? sellerUniqueName;
  @override
  final String? globeLink;
  @override
  final String? youtubeLink;
  @override
  final String? linkedinLink;
  @override
  final String? facebookLink;
  @override
  final String? sellerTitle;
  @override
  @JsonKey(name: 'cover_pic')
  final String? coverPic;
  @override
  final String? affiliateCouponCode;
  @override
  final String? affiliateCouponUuid;
  @override
  final String? organizationName;
  @override
  final String? needToShowInfoModal;
  @override
  final String? isNumberVerified;
  @override
  final String? userTag;
  @override
  final School? school;
  @override
  final SchoolOrder? schoolOrder;
  @override
  @JsonKey()
  final int totalCourses;
  @override
  @JsonKey()
  final int totalBundles;
  @override
  @JsonKey()
  final int totalCommunities;
  @override
  @JsonKey()
  final int totalGroups;
  @override
  @JsonKey()
  final int totalUnseenNotifications;
  @override
  @JsonKey()
  final int totalUnseenPrivateChatMessages;
  @override
  @JsonKey()
  final int totalUnseenGroupChatMessages;
  @override
  final Addons? addons;
  @override
  final StudentProfileTabSettings? studentProfileTabSettings;

  @override
  String toString() {
    return 'User(id: $id, email: $email, firstName: $firstName, lastName: $lastName, fullName: $fullName, schoolId: $schoolId, canWriteDoc: $canWriteDoc, isVerified: $isVerified, isApproved: $isApproved, userType: $userType, createdBy: $createdBy, createdAt: $createdAt, isPrivateChat: $isPrivateChat, updatedAt: $updatedAt, profilePic: $profilePic, isOnline: $isOnline, bio: $bio, userId: $userId, socialAuthProvider: $socialAuthProvider, lastLogin: $lastLogin, status: $status, isSuspended: $isSuspended, pauseDate: $pauseDate, expireDate: $expireDate, canWriteDocDefault: $canWriteDocDefault, orderId: $orderId, customFields: $customFields, isAllowChat: $isAllowChat, refId: $refId, refCommissionLevel1: $refCommissionLevel1, refCommissionLevel2: $refCommissionLevel2, parentRefId: $parentRefId, refComL1ValueType: $refComL1ValueType, refComL2ValueType: $refComL2ValueType, refAllowLinkedMembership: $refAllowLinkedMembership, isManual: $isManual, referredBy: $referredBy, isEligibleForSpecialOffer: $isEligibleForSpecialOffer, isFoundling: $isFoundling, planId: $planId, is2faEnabled: $is2faEnabled, webpushsub: $webpushsub, isForceLogoutEnabled: $isForceLogoutEnabled, payoutPaypalEmail: $payoutPaypalEmail, refPhyCommissionLevel1: $refPhyCommissionLevel1, isManualPrivateChat: $isManualPrivateChat, refPhyComL1ValueType: $refPhyComL1ValueType, siteOwnerUserId: $siteOwnerUserId, ezyAffiliateUserId: $ezyAffiliateUserId, stripePayoutEnabled: $stripePayoutEnabled, signupMethod: $signupMethod, deletedAt: $deletedAt, signupCustomFieldsResponses: $signupCustomFieldsResponses, deletedBy: $deletedBy, refPhyCommissionLevel2: $refPhyCommissionLevel2, refPhyComL2ValueType: $refPhyComL2ValueType, totalNotiCount: $totalNotiCount, totalChatNotiCount: $totalChatNotiCount, aboutMe: $aboutMe, totalSell: $totalSell, sellerUniqueName: $sellerUniqueName, globeLink: $globeLink, youtubeLink: $youtubeLink, linkedinLink: $linkedinLink, facebookLink: $facebookLink, sellerTitle: $sellerTitle, coverPic: $coverPic, affiliateCouponCode: $affiliateCouponCode, affiliateCouponUuid: $affiliateCouponUuid, organizationName: $organizationName, needToShowInfoModal: $needToShowInfoModal, isNumberVerified: $isNumberVerified, userTag: $userTag, school: $school, schoolOrder: $schoolOrder, totalCourses: $totalCourses, totalBundles: $totalBundles, totalCommunities: $totalCommunities, totalGroups: $totalGroups, totalUnseenNotifications: $totalUnseenNotifications, totalUnseenPrivateChatMessages: $totalUnseenPrivateChatMessages, totalUnseenGroupChatMessages: $totalUnseenGroupChatMessages, addons: $addons, studentProfileTabSettings: $studentProfileTabSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.canWriteDoc, canWriteDoc) ||
                other.canWriteDoc == canWriteDoc) &&
            (identical(other.isVerified, isVerified) ||
                other.isVerified == isVerified) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isPrivateChat, isPrivateChat) ||
                other.isPrivateChat == isPrivateChat) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.socialAuthProvider, socialAuthProvider) ||
                other.socialAuthProvider == socialAuthProvider) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isSuspended, isSuspended) ||
                other.isSuspended == isSuspended) &&
            (identical(other.pauseDate, pauseDate) ||
                other.pauseDate == pauseDate) &&
            (identical(other.expireDate, expireDate) ||
                other.expireDate == expireDate) &&
            (identical(other.canWriteDocDefault, canWriteDocDefault) ||
                other.canWriteDocDefault == canWriteDocDefault) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            const DeepCollectionEquality().equals(
              other._customFields,
              _customFields,
            ) &&
            (identical(other.isAllowChat, isAllowChat) ||
                other.isAllowChat == isAllowChat) &&
            (identical(other.refId, refId) || other.refId == refId) &&
            (identical(other.refCommissionLevel1, refCommissionLevel1) ||
                other.refCommissionLevel1 == refCommissionLevel1) &&
            (identical(other.refCommissionLevel2, refCommissionLevel2) ||
                other.refCommissionLevel2 == refCommissionLevel2) &&
            (identical(other.parentRefId, parentRefId) ||
                other.parentRefId == parentRefId) &&
            (identical(other.refComL1ValueType, refComL1ValueType) ||
                other.refComL1ValueType == refComL1ValueType) &&
            (identical(other.refComL2ValueType, refComL2ValueType) ||
                other.refComL2ValueType == refComL2ValueType) &&
            (identical(
                  other.refAllowLinkedMembership,
                  refAllowLinkedMembership,
                ) ||
                other.refAllowLinkedMembership == refAllowLinkedMembership) &&
            (identical(other.isManual, isManual) ||
                other.isManual == isManual) &&
            (identical(other.referredBy, referredBy) ||
                other.referredBy == referredBy) &&
            (identical(
                  other.isEligibleForSpecialOffer,
                  isEligibleForSpecialOffer,
                ) ||
                other.isEligibleForSpecialOffer == isEligibleForSpecialOffer) &&
            (identical(other.isFoundling, isFoundling) ||
                other.isFoundling == isFoundling) &&
            (identical(other.planId, planId) || other.planId == planId) &&
            (identical(other.is2faEnabled, is2faEnabled) ||
                other.is2faEnabled == is2faEnabled) &&
            (identical(other.webpushsub, webpushsub) ||
                other.webpushsub == webpushsub) &&
            (identical(other.isForceLogoutEnabled, isForceLogoutEnabled) ||
                other.isForceLogoutEnabled == isForceLogoutEnabled) &&
            (identical(other.payoutPaypalEmail, payoutPaypalEmail) ||
                other.payoutPaypalEmail == payoutPaypalEmail) &&
            (identical(other.refPhyCommissionLevel1, refPhyCommissionLevel1) ||
                other.refPhyCommissionLevel1 == refPhyCommissionLevel1) &&
            (identical(other.isManualPrivateChat, isManualPrivateChat) ||
                other.isManualPrivateChat == isManualPrivateChat) &&
            (identical(other.refPhyComL1ValueType, refPhyComL1ValueType) ||
                other.refPhyComL1ValueType == refPhyComL1ValueType) &&
            (identical(other.siteOwnerUserId, siteOwnerUserId) ||
                other.siteOwnerUserId == siteOwnerUserId) &&
            (identical(other.ezyAffiliateUserId, ezyAffiliateUserId) ||
                other.ezyAffiliateUserId == ezyAffiliateUserId) &&
            (identical(other.stripePayoutEnabled, stripePayoutEnabled) ||
                other.stripePayoutEnabled == stripePayoutEnabled) &&
            (identical(other.signupMethod, signupMethod) ||
                other.signupMethod == signupMethod) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            const DeepCollectionEquality().equals(
              other._signupCustomFieldsResponses,
              _signupCustomFieldsResponses,
            ) &&
            (identical(other.deletedBy, deletedBy) ||
                other.deletedBy == deletedBy) &&
            (identical(other.refPhyCommissionLevel2, refPhyCommissionLevel2) ||
                other.refPhyCommissionLevel2 == refPhyCommissionLevel2) &&
            (identical(other.refPhyComL2ValueType, refPhyComL2ValueType) ||
                other.refPhyComL2ValueType == refPhyComL2ValueType) &&
            (identical(other.totalNotiCount, totalNotiCount) ||
                other.totalNotiCount == totalNotiCount) &&
            (identical(other.totalChatNotiCount, totalChatNotiCount) ||
                other.totalChatNotiCount == totalChatNotiCount) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.totalSell, totalSell) ||
                other.totalSell == totalSell) &&
            (identical(other.sellerUniqueName, sellerUniqueName) ||
                other.sellerUniqueName == sellerUniqueName) &&
            (identical(other.globeLink, globeLink) ||
                other.globeLink == globeLink) &&
            (identical(other.youtubeLink, youtubeLink) ||
                other.youtubeLink == youtubeLink) &&
            (identical(other.linkedinLink, linkedinLink) ||
                other.linkedinLink == linkedinLink) &&
            (identical(other.facebookLink, facebookLink) ||
                other.facebookLink == facebookLink) &&
            (identical(other.sellerTitle, sellerTitle) ||
                other.sellerTitle == sellerTitle) &&
            (identical(other.coverPic, coverPic) ||
                other.coverPic == coverPic) &&
            (identical(other.affiliateCouponCode, affiliateCouponCode) ||
                other.affiliateCouponCode == affiliateCouponCode) &&
            (identical(other.affiliateCouponUuid, affiliateCouponUuid) ||
                other.affiliateCouponUuid == affiliateCouponUuid) &&
            (identical(other.organizationName, organizationName) ||
                other.organizationName == organizationName) &&
            (identical(other.needToShowInfoModal, needToShowInfoModal) ||
                other.needToShowInfoModal == needToShowInfoModal) &&
            (identical(other.isNumberVerified, isNumberVerified) ||
                other.isNumberVerified == isNumberVerified) &&
            (identical(other.userTag, userTag) || other.userTag == userTag) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.schoolOrder, schoolOrder) ||
                other.schoolOrder == schoolOrder) &&
            (identical(other.totalCourses, totalCourses) ||
                other.totalCourses == totalCourses) &&
            (identical(other.totalBundles, totalBundles) ||
                other.totalBundles == totalBundles) &&
            (identical(other.totalCommunities, totalCommunities) ||
                other.totalCommunities == totalCommunities) &&
            (identical(other.totalGroups, totalGroups) ||
                other.totalGroups == totalGroups) &&
            (identical(
                  other.totalUnseenNotifications,
                  totalUnseenNotifications,
                ) ||
                other.totalUnseenNotifications == totalUnseenNotifications) &&
            (identical(
                  other.totalUnseenPrivateChatMessages,
                  totalUnseenPrivateChatMessages,
                ) ||
                other.totalUnseenPrivateChatMessages ==
                    totalUnseenPrivateChatMessages) &&
            (identical(
                  other.totalUnseenGroupChatMessages,
                  totalUnseenGroupChatMessages,
                ) ||
                other.totalUnseenGroupChatMessages ==
                    totalUnseenGroupChatMessages) &&
            (identical(other.addons, addons) || other.addons == addons) &&
            (identical(
                  other.studentProfileTabSettings,
                  studentProfileTabSettings,
                ) ||
                other.studentProfileTabSettings == studentProfileTabSettings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    email,
    firstName,
    lastName,
    fullName,
    schoolId,
    canWriteDoc,
    isVerified,
    isApproved,
    userType,
    createdBy,
    createdAt,
    isPrivateChat,
    updatedAt,
    profilePic,
    isOnline,
    bio,
    userId,
    socialAuthProvider,
    lastLogin,
    status,
    isSuspended,
    pauseDate,
    expireDate,
    canWriteDocDefault,
    orderId,
    const DeepCollectionEquality().hash(_customFields),
    isAllowChat,
    refId,
    refCommissionLevel1,
    refCommissionLevel2,
    parentRefId,
    refComL1ValueType,
    refComL2ValueType,
    refAllowLinkedMembership,
    isManual,
    referredBy,
    isEligibleForSpecialOffer,
    isFoundling,
    planId,
    is2faEnabled,
    webpushsub,
    isForceLogoutEnabled,
    payoutPaypalEmail,
    refPhyCommissionLevel1,
    isManualPrivateChat,
    refPhyComL1ValueType,
    siteOwnerUserId,
    ezyAffiliateUserId,
    stripePayoutEnabled,
    signupMethod,
    deletedAt,
    const DeepCollectionEquality().hash(_signupCustomFieldsResponses),
    deletedBy,
    refPhyCommissionLevel2,
    refPhyComL2ValueType,
    totalNotiCount,
    totalChatNotiCount,
    aboutMe,
    totalSell,
    sellerUniqueName,
    globeLink,
    youtubeLink,
    linkedinLink,
    facebookLink,
    sellerTitle,
    coverPic,
    affiliateCouponCode,
    affiliateCouponUuid,
    organizationName,
    needToShowInfoModal,
    isNumberVerified,
    userTag,
    school,
    schoolOrder,
    totalCourses,
    totalBundles,
    totalCommunities,
    totalGroups,
    totalUnseenNotifications,
    totalUnseenPrivateChatMessages,
    totalUnseenGroupChatMessages,
    addons,
    studentProfileTabSettings,
  ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(this);
  }
}

abstract class _User implements User {
  const factory _User({
    required final int id,
    required final String email,
    final String? firstName,
    final String? lastName,
    final String? fullName,
    final int? schoolId,
    final int? canWriteDoc,
    final String? isVerified,
    final int isApproved,
    final String? userType,
    final String? createdBy,
    final String? createdAt,
    final int isPrivateChat,
    final String? updatedAt,
    final String? profilePic,
    final String? isOnline,
    final String? bio,
    final int? userId,
    final String? socialAuthProvider,
    final String? lastLogin,
    final String? status,
    final int isSuspended,
    final String? pauseDate,
    final String? expireDate,
    final int canWriteDocDefault,
    final int? orderId,
    final Map<String, dynamic>? customFields,
    final int? isAllowChat,
    final String? refId,
    final int refCommissionLevel1,
    final int refCommissionLevel2,
    final String? parentRefId,
    final String? refComL1ValueType,
    final String? refComL2ValueType,
    final int refAllowLinkedMembership,
    final int isManual,
    final String? referredBy,
    final int isEligibleForSpecialOffer,
    final String? isFoundling,
    final int? planId,
    final int is2faEnabled,
    final String? webpushsub,
    final int isForceLogoutEnabled,
    final String? payoutPaypalEmail,
    final int refPhyCommissionLevel1,
    final int isManualPrivateChat,
    final String? refPhyComL1ValueType,
    final int? siteOwnerUserId,
    final int? ezyAffiliateUserId,
    final int stripePayoutEnabled,
    final String? signupMethod,
    final String? deletedAt,
    final Map<String, dynamic>? signupCustomFieldsResponses,
    final String? deletedBy,
    final int refPhyCommissionLevel2,
    final String? refPhyComL2ValueType,
    final int totalNotiCount,
    final int totalChatNotiCount,
    final String? aboutMe,
    final String? totalSell,
    final String? sellerUniqueName,
    final String? globeLink,
    final String? youtubeLink,
    final String? linkedinLink,
    final String? facebookLink,
    final String? sellerTitle,
    @JsonKey(name: 'cover_pic') final String? coverPic,
    final String? affiliateCouponCode,
    final String? affiliateCouponUuid,
    final String? organizationName,
    final String? needToShowInfoModal,
    final String? isNumberVerified,
    final String? userTag,
    final School? school,
    final SchoolOrder? schoolOrder,
    final int totalCourses,
    final int totalBundles,
    final int totalCommunities,
    final int totalGroups,
    final int totalUnseenNotifications,
    final int totalUnseenPrivateChatMessages,
    final int totalUnseenGroupChatMessages,
    final Addons? addons,
    final StudentProfileTabSettings? studentProfileTabSettings,
  }) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  String get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get fullName;
  @override
  int? get schoolId;
  @override
  int? get canWriteDoc;
  @override
  String? get isVerified;
  @override
  int get isApproved;
  @override
  String? get userType;
  @override
  String? get createdBy;
  @override
  String? get createdAt;
  @override
  int get isPrivateChat;
  @override
  String? get updatedAt;
  @override
  String? get profilePic;
  @override
  String? get isOnline;
  @override
  String? get bio;
  @override
  int? get userId;
  @override
  String? get socialAuthProvider;
  @override
  String? get lastLogin;
  @override
  String? get status;
  @override
  int get isSuspended;
  @override
  String? get pauseDate;
  @override
  String? get expireDate;
  @override
  int get canWriteDocDefault;
  @override
  int? get orderId;
  @override
  Map<String, dynamic>? get customFields;
  @override
  int? get isAllowChat;
  @override
  String? get refId;
  @override
  int get refCommissionLevel1;
  @override
  int get refCommissionLevel2;
  @override
  String? get parentRefId;
  @override
  String? get refComL1ValueType;
  @override
  String? get refComL2ValueType;
  @override
  int get refAllowLinkedMembership;
  @override
  int get isManual;
  @override
  String? get referredBy;
  @override
  int get isEligibleForSpecialOffer;
  @override
  String? get isFoundling;
  @override
  int? get planId;
  @override
  int get is2faEnabled;
  @override
  String? get webpushsub;
  @override
  int get isForceLogoutEnabled;
  @override
  String? get payoutPaypalEmail;
  @override
  int get refPhyCommissionLevel1;
  @override
  int get isManualPrivateChat;
  @override
  String? get refPhyComL1ValueType;
  @override
  int? get siteOwnerUserId;
  @override
  int? get ezyAffiliateUserId;
  @override
  int get stripePayoutEnabled;
  @override
  String? get signupMethod;
  @override
  String? get deletedAt;
  @override
  Map<String, dynamic>? get signupCustomFieldsResponses;
  @override
  String? get deletedBy;
  @override
  int get refPhyCommissionLevel2;
  @override
  String? get refPhyComL2ValueType;
  @override
  int get totalNotiCount;
  @override
  int get totalChatNotiCount;
  @override
  String? get aboutMe;
  @override
  String? get totalSell;
  @override
  String? get sellerUniqueName;
  @override
  String? get globeLink;
  @override
  String? get youtubeLink;
  @override
  String? get linkedinLink;
  @override
  String? get facebookLink;
  @override
  String? get sellerTitle;
  @override
  @JsonKey(name: 'cover_pic')
  String? get coverPic;
  @override
  String? get affiliateCouponCode;
  @override
  String? get affiliateCouponUuid;
  @override
  String? get organizationName;
  @override
  String? get needToShowInfoModal;
  @override
  String? get isNumberVerified;
  @override
  String? get userTag;
  @override
  School? get school;
  @override
  SchoolOrder? get schoolOrder;
  @override
  int get totalCourses;
  @override
  int get totalBundles;
  @override
  int get totalCommunities;
  @override
  int get totalGroups;
  @override
  int get totalUnseenNotifications;
  @override
  int get totalUnseenPrivateChatMessages;
  @override
  int get totalUnseenGroupChatMessages;
  @override
  Addons? get addons;
  @override
  StudentProfileTabSettings? get studentProfileTabSettings;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

School _$SchoolFromJson(Map<String, dynamic> json) {
  return _School.fromJson(json);
}

/// @nodoc
mixin _$School {
  int get id => throw _privateConstructorUsedError;
  int get isPrivateChatEnabled => throw _privateConstructorUsedError;
  Map<String, dynamic>? get meta => throw _privateConstructorUsedError;

  /// Serializes this School to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolCopyWith<School> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolCopyWith<$Res> {
  factory $SchoolCopyWith(School value, $Res Function(School) then) =
      _$SchoolCopyWithImpl<$Res, School>;
  @useResult
  $Res call({int id, int isPrivateChatEnabled, Map<String, dynamic>? meta});
}

/// @nodoc
class _$SchoolCopyWithImpl<$Res, $Val extends School>
    implements $SchoolCopyWith<$Res> {
  _$SchoolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isPrivateChatEnabled = null,
    Object? meta = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            isPrivateChatEnabled: null == isPrivateChatEnabled
                ? _value.isPrivateChatEnabled
                : isPrivateChatEnabled // ignore: cast_nullable_to_non_nullable
                      as int,
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
abstract class _$$SchoolImplCopyWith<$Res> implements $SchoolCopyWith<$Res> {
  factory _$$SchoolImplCopyWith(
    _$SchoolImpl value,
    $Res Function(_$SchoolImpl) then,
  ) = __$$SchoolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int isPrivateChatEnabled, Map<String, dynamic>? meta});
}

/// @nodoc
class __$$SchoolImplCopyWithImpl<$Res>
    extends _$SchoolCopyWithImpl<$Res, _$SchoolImpl>
    implements _$$SchoolImplCopyWith<$Res> {
  __$$SchoolImplCopyWithImpl(
    _$SchoolImpl _value,
    $Res Function(_$SchoolImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? isPrivateChatEnabled = null,
    Object? meta = freezed,
  }) {
    return _then(
      _$SchoolImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        isPrivateChatEnabled: null == isPrivateChatEnabled
            ? _value.isPrivateChatEnabled
            : isPrivateChatEnabled // ignore: cast_nullable_to_non_nullable
                  as int,
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
class _$SchoolImpl implements _School {
  const _$SchoolImpl({
    required this.id,
    this.isPrivateChatEnabled = 1,
    final Map<String, dynamic>? meta,
  }) : _meta = meta;

  factory _$SchoolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey()
  final int isPrivateChatEnabled;
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
    return 'School(id: $id, isPrivateChatEnabled: $isPrivateChatEnabled, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isPrivateChatEnabled, isPrivateChatEnabled) ||
                other.isPrivateChatEnabled == isPrivateChatEnabled) &&
            const DeepCollectionEquality().equals(other._meta, _meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    isPrivateChatEnabled,
    const DeepCollectionEquality().hash(_meta),
  );

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      __$$SchoolImplCopyWithImpl<_$SchoolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolImplToJson(this);
  }
}

abstract class _School implements School {
  const factory _School({
    required final int id,
    final int isPrivateChatEnabled,
    final Map<String, dynamic>? meta,
  }) = _$SchoolImpl;

  factory _School.fromJson(Map<String, dynamic> json) = _$SchoolImpl.fromJson;

  @override
  int get id;
  @override
  int get isPrivateChatEnabled;
  @override
  Map<String, dynamic>? get meta;

  /// Create a copy of School
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolImplCopyWith<_$SchoolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SchoolOrder _$SchoolOrderFromJson(Map<String, dynamic> json) {
  return _SchoolOrder.fromJson(json);
}

/// @nodoc
mixin _$SchoolOrder {
  int get id => throw _privateConstructorUsedError;
  String? get plan => throw _privateConstructorUsedError;
  String? get interval => throw _privateConstructorUsedError;
  String? get currentPeriodEnd => throw _privateConstructorUsedError;
  int? get schoolId => throw _privateConstructorUsedError;

  /// Serializes this SchoolOrder to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SchoolOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SchoolOrderCopyWith<SchoolOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolOrderCopyWith<$Res> {
  factory $SchoolOrderCopyWith(
    SchoolOrder value,
    $Res Function(SchoolOrder) then,
  ) = _$SchoolOrderCopyWithImpl<$Res, SchoolOrder>;
  @useResult
  $Res call({
    int id,
    String? plan,
    String? interval,
    String? currentPeriodEnd,
    int? schoolId,
  });
}

/// @nodoc
class _$SchoolOrderCopyWithImpl<$Res, $Val extends SchoolOrder>
    implements $SchoolOrderCopyWith<$Res> {
  _$SchoolOrderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SchoolOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plan = freezed,
    Object? interval = freezed,
    Object? currentPeriodEnd = freezed,
    Object? schoolId = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            plan: freezed == plan
                ? _value.plan
                : plan // ignore: cast_nullable_to_non_nullable
                      as String?,
            interval: freezed == interval
                ? _value.interval
                : interval // ignore: cast_nullable_to_non_nullable
                      as String?,
            currentPeriodEnd: freezed == currentPeriodEnd
                ? _value.currentPeriodEnd
                : currentPeriodEnd // ignore: cast_nullable_to_non_nullable
                      as String?,
            schoolId: freezed == schoolId
                ? _value.schoolId
                : schoolId // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SchoolOrderImplCopyWith<$Res>
    implements $SchoolOrderCopyWith<$Res> {
  factory _$$SchoolOrderImplCopyWith(
    _$SchoolOrderImpl value,
    $Res Function(_$SchoolOrderImpl) then,
  ) = __$$SchoolOrderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? plan,
    String? interval,
    String? currentPeriodEnd,
    int? schoolId,
  });
}

/// @nodoc
class __$$SchoolOrderImplCopyWithImpl<$Res>
    extends _$SchoolOrderCopyWithImpl<$Res, _$SchoolOrderImpl>
    implements _$$SchoolOrderImplCopyWith<$Res> {
  __$$SchoolOrderImplCopyWithImpl(
    _$SchoolOrderImpl _value,
    $Res Function(_$SchoolOrderImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SchoolOrder
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? plan = freezed,
    Object? interval = freezed,
    Object? currentPeriodEnd = freezed,
    Object? schoolId = freezed,
  }) {
    return _then(
      _$SchoolOrderImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        plan: freezed == plan
            ? _value.plan
            : plan // ignore: cast_nullable_to_non_nullable
                  as String?,
        interval: freezed == interval
            ? _value.interval
            : interval // ignore: cast_nullable_to_non_nullable
                  as String?,
        currentPeriodEnd: freezed == currentPeriodEnd
            ? _value.currentPeriodEnd
            : currentPeriodEnd // ignore: cast_nullable_to_non_nullable
                  as String?,
        schoolId: freezed == schoolId
            ? _value.schoolId
            : schoolId // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SchoolOrderImpl implements _SchoolOrder {
  const _$SchoolOrderImpl({
    required this.id,
    this.plan,
    this.interval,
    this.currentPeriodEnd,
    this.schoolId,
  });

  factory _$SchoolOrderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SchoolOrderImplFromJson(json);

  @override
  final int id;
  @override
  final String? plan;
  @override
  final String? interval;
  @override
  final String? currentPeriodEnd;
  @override
  final int? schoolId;

  @override
  String toString() {
    return 'SchoolOrder(id: $id, plan: $plan, interval: $interval, currentPeriodEnd: $currentPeriodEnd, schoolId: $schoolId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SchoolOrderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            (identical(other.interval, interval) ||
                other.interval == interval) &&
            (identical(other.currentPeriodEnd, currentPeriodEnd) ||
                other.currentPeriodEnd == currentPeriodEnd) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, plan, interval, currentPeriodEnd, schoolId);

  /// Create a copy of SchoolOrder
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SchoolOrderImplCopyWith<_$SchoolOrderImpl> get copyWith =>
      __$$SchoolOrderImplCopyWithImpl<_$SchoolOrderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SchoolOrderImplToJson(this);
  }
}

abstract class _SchoolOrder implements SchoolOrder {
  const factory _SchoolOrder({
    required final int id,
    final String? plan,
    final String? interval,
    final String? currentPeriodEnd,
    final int? schoolId,
  }) = _$SchoolOrderImpl;

  factory _SchoolOrder.fromJson(Map<String, dynamic> json) =
      _$SchoolOrderImpl.fromJson;

  @override
  int get id;
  @override
  String? get plan;
  @override
  String? get interval;
  @override
  String? get currentPeriodEnd;
  @override
  int? get schoolId;

  /// Create a copy of SchoolOrder
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SchoolOrderImplCopyWith<_$SchoolOrderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Addons _$AddonsFromJson(Map<String, dynamic> json) {
  return _Addons.fromJson(json);
}

/// @nodoc
mixin _$Addons {
  bool get privetChat => throw _privateConstructorUsedError;
  bool get studentChat => throw _privateConstructorUsedError;
  bool get socialNetwork => throw _privateConstructorUsedError;
  bool get videoAnalytics => throw _privateConstructorUsedError;

  /// Serializes this Addons to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Addons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddonsCopyWith<Addons> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddonsCopyWith<$Res> {
  factory $AddonsCopyWith(Addons value, $Res Function(Addons) then) =
      _$AddonsCopyWithImpl<$Res, Addons>;
  @useResult
  $Res call({
    bool privetChat,
    bool studentChat,
    bool socialNetwork,
    bool videoAnalytics,
  });
}

/// @nodoc
class _$AddonsCopyWithImpl<$Res, $Val extends Addons>
    implements $AddonsCopyWith<$Res> {
  _$AddonsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Addons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privetChat = null,
    Object? studentChat = null,
    Object? socialNetwork = null,
    Object? videoAnalytics = null,
  }) {
    return _then(
      _value.copyWith(
            privetChat: null == privetChat
                ? _value.privetChat
                : privetChat // ignore: cast_nullable_to_non_nullable
                      as bool,
            studentChat: null == studentChat
                ? _value.studentChat
                : studentChat // ignore: cast_nullable_to_non_nullable
                      as bool,
            socialNetwork: null == socialNetwork
                ? _value.socialNetwork
                : socialNetwork // ignore: cast_nullable_to_non_nullable
                      as bool,
            videoAnalytics: null == videoAnalytics
                ? _value.videoAnalytics
                : videoAnalytics // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AddonsImplCopyWith<$Res> implements $AddonsCopyWith<$Res> {
  factory _$$AddonsImplCopyWith(
    _$AddonsImpl value,
    $Res Function(_$AddonsImpl) then,
  ) = __$$AddonsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool privetChat,
    bool studentChat,
    bool socialNetwork,
    bool videoAnalytics,
  });
}

/// @nodoc
class __$$AddonsImplCopyWithImpl<$Res>
    extends _$AddonsCopyWithImpl<$Res, _$AddonsImpl>
    implements _$$AddonsImplCopyWith<$Res> {
  __$$AddonsImplCopyWithImpl(
    _$AddonsImpl _value,
    $Res Function(_$AddonsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Addons
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? privetChat = null,
    Object? studentChat = null,
    Object? socialNetwork = null,
    Object? videoAnalytics = null,
  }) {
    return _then(
      _$AddonsImpl(
        privetChat: null == privetChat
            ? _value.privetChat
            : privetChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        studentChat: null == studentChat
            ? _value.studentChat
            : studentChat // ignore: cast_nullable_to_non_nullable
                  as bool,
        socialNetwork: null == socialNetwork
            ? _value.socialNetwork
            : socialNetwork // ignore: cast_nullable_to_non_nullable
                  as bool,
        videoAnalytics: null == videoAnalytics
            ? _value.videoAnalytics
            : videoAnalytics // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AddonsImpl implements _Addons {
  const _$AddonsImpl({
    this.privetChat = false,
    this.studentChat = false,
    this.socialNetwork = false,
    this.videoAnalytics = false,
  });

  factory _$AddonsImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddonsImplFromJson(json);

  @override
  @JsonKey()
  final bool privetChat;
  @override
  @JsonKey()
  final bool studentChat;
  @override
  @JsonKey()
  final bool socialNetwork;
  @override
  @JsonKey()
  final bool videoAnalytics;

  @override
  String toString() {
    return 'Addons(privetChat: $privetChat, studentChat: $studentChat, socialNetwork: $socialNetwork, videoAnalytics: $videoAnalytics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddonsImpl &&
            (identical(other.privetChat, privetChat) ||
                other.privetChat == privetChat) &&
            (identical(other.studentChat, studentChat) ||
                other.studentChat == studentChat) &&
            (identical(other.socialNetwork, socialNetwork) ||
                other.socialNetwork == socialNetwork) &&
            (identical(other.videoAnalytics, videoAnalytics) ||
                other.videoAnalytics == videoAnalytics));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    privetChat,
    studentChat,
    socialNetwork,
    videoAnalytics,
  );

  /// Create a copy of Addons
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddonsImplCopyWith<_$AddonsImpl> get copyWith =>
      __$$AddonsImplCopyWithImpl<_$AddonsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddonsImplToJson(this);
  }
}

abstract class _Addons implements Addons {
  const factory _Addons({
    final bool privetChat,
    final bool studentChat,
    final bool socialNetwork,
    final bool videoAnalytics,
  }) = _$AddonsImpl;

  factory _Addons.fromJson(Map<String, dynamic> json) = _$AddonsImpl.fromJson;

  @override
  bool get privetChat;
  @override
  bool get studentChat;
  @override
  bool get socialNetwork;
  @override
  bool get videoAnalytics;

  /// Create a copy of Addons
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddonsImplCopyWith<_$AddonsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StudentProfileTabSettings _$StudentProfileTabSettingsFromJson(
  Map<String, dynamic> json,
) {
  return _StudentProfileTabSettings.fromJson(json);
}

/// @nodoc
mixin _$StudentProfileTabSettings {
  bool get isEnable => throw _privateConstructorUsedError;
  List<TabSetting>? get settings => throw _privateConstructorUsedError;

  /// Serializes this StudentProfileTabSettings to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StudentProfileTabSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StudentProfileTabSettingsCopyWith<StudentProfileTabSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentProfileTabSettingsCopyWith<$Res> {
  factory $StudentProfileTabSettingsCopyWith(
    StudentProfileTabSettings value,
    $Res Function(StudentProfileTabSettings) then,
  ) = _$StudentProfileTabSettingsCopyWithImpl<$Res, StudentProfileTabSettings>;
  @useResult
  $Res call({bool isEnable, List<TabSetting>? settings});
}

/// @nodoc
class _$StudentProfileTabSettingsCopyWithImpl<
  $Res,
  $Val extends StudentProfileTabSettings
>
    implements $StudentProfileTabSettingsCopyWith<$Res> {
  _$StudentProfileTabSettingsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StudentProfileTabSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEnable = null, Object? settings = freezed}) {
    return _then(
      _value.copyWith(
            isEnable: null == isEnable
                ? _value.isEnable
                : isEnable // ignore: cast_nullable_to_non_nullable
                      as bool,
            settings: freezed == settings
                ? _value.settings
                : settings // ignore: cast_nullable_to_non_nullable
                      as List<TabSetting>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$StudentProfileTabSettingsImplCopyWith<$Res>
    implements $StudentProfileTabSettingsCopyWith<$Res> {
  factory _$$StudentProfileTabSettingsImplCopyWith(
    _$StudentProfileTabSettingsImpl value,
    $Res Function(_$StudentProfileTabSettingsImpl) then,
  ) = __$$StudentProfileTabSettingsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEnable, List<TabSetting>? settings});
}

/// @nodoc
class __$$StudentProfileTabSettingsImplCopyWithImpl<$Res>
    extends
        _$StudentProfileTabSettingsCopyWithImpl<
          $Res,
          _$StudentProfileTabSettingsImpl
        >
    implements _$$StudentProfileTabSettingsImplCopyWith<$Res> {
  __$$StudentProfileTabSettingsImplCopyWithImpl(
    _$StudentProfileTabSettingsImpl _value,
    $Res Function(_$StudentProfileTabSettingsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of StudentProfileTabSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isEnable = null, Object? settings = freezed}) {
    return _then(
      _$StudentProfileTabSettingsImpl(
        isEnable: null == isEnable
            ? _value.isEnable
            : isEnable // ignore: cast_nullable_to_non_nullable
                  as bool,
        settings: freezed == settings
            ? _value._settings
            : settings // ignore: cast_nullable_to_non_nullable
                  as List<TabSetting>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentProfileTabSettingsImpl implements _StudentProfileTabSettings {
  const _$StudentProfileTabSettingsImpl({
    this.isEnable = false,
    final List<TabSetting>? settings,
  }) : _settings = settings;

  factory _$StudentProfileTabSettingsImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentProfileTabSettingsImplFromJson(json);

  @override
  @JsonKey()
  final bool isEnable;
  final List<TabSetting>? _settings;
  @override
  List<TabSetting>? get settings {
    final value = _settings;
    if (value == null) return null;
    if (_settings is EqualUnmodifiableListView) return _settings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'StudentProfileTabSettings(isEnable: $isEnable, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentProfileTabSettingsImpl &&
            (identical(other.isEnable, isEnable) ||
                other.isEnable == isEnable) &&
            const DeepCollectionEquality().equals(other._settings, _settings));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isEnable,
    const DeepCollectionEquality().hash(_settings),
  );

  /// Create a copy of StudentProfileTabSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentProfileTabSettingsImplCopyWith<_$StudentProfileTabSettingsImpl>
  get copyWith =>
      __$$StudentProfileTabSettingsImplCopyWithImpl<
        _$StudentProfileTabSettingsImpl
      >(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentProfileTabSettingsImplToJson(this);
  }
}

abstract class _StudentProfileTabSettings implements StudentProfileTabSettings {
  const factory _StudentProfileTabSettings({
    final bool isEnable,
    final List<TabSetting>? settings,
  }) = _$StudentProfileTabSettingsImpl;

  factory _StudentProfileTabSettings.fromJson(Map<String, dynamic> json) =
      _$StudentProfileTabSettingsImpl.fromJson;

  @override
  bool get isEnable;
  @override
  List<TabSetting>? get settings;

  /// Create a copy of StudentProfileTabSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StudentProfileTabSettingsImplCopyWith<_$StudentProfileTabSettingsImpl>
  get copyWith => throw _privateConstructorUsedError;
}

TabSetting _$TabSettingFromJson(Map<String, dynamic> json) {
  return _TabSetting.fromJson(json);
}

/// @nodoc
mixin _$TabSetting {
  String? get settingName => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;
  String? get settingKey => throw _privateConstructorUsedError;

  /// Serializes this TabSetting to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TabSettingCopyWith<TabSetting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabSettingCopyWith<$Res> {
  factory $TabSettingCopyWith(
    TabSetting value,
    $Res Function(TabSetting) then,
  ) = _$TabSettingCopyWithImpl<$Res, TabSetting>;
  @useResult
  $Res call({String? settingName, bool isEnabled, String? settingKey});
}

/// @nodoc
class _$TabSettingCopyWithImpl<$Res, $Val extends TabSetting>
    implements $TabSettingCopyWith<$Res> {
  _$TabSettingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settingName = freezed,
    Object? isEnabled = null,
    Object? settingKey = freezed,
  }) {
    return _then(
      _value.copyWith(
            settingName: freezed == settingName
                ? _value.settingName
                : settingName // ignore: cast_nullable_to_non_nullable
                      as String?,
            isEnabled: null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
            settingKey: freezed == settingKey
                ? _value.settingKey
                : settingKey // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$TabSettingImplCopyWith<$Res>
    implements $TabSettingCopyWith<$Res> {
  factory _$$TabSettingImplCopyWith(
    _$TabSettingImpl value,
    $Res Function(_$TabSettingImpl) then,
  ) = __$$TabSettingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? settingName, bool isEnabled, String? settingKey});
}

/// @nodoc
class __$$TabSettingImplCopyWithImpl<$Res>
    extends _$TabSettingCopyWithImpl<$Res, _$TabSettingImpl>
    implements _$$TabSettingImplCopyWith<$Res> {
  __$$TabSettingImplCopyWithImpl(
    _$TabSettingImpl _value,
    $Res Function(_$TabSettingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settingName = freezed,
    Object? isEnabled = null,
    Object? settingKey = freezed,
  }) {
    return _then(
      _$TabSettingImpl(
        settingName: freezed == settingName
            ? _value.settingName
            : settingName // ignore: cast_nullable_to_non_nullable
                  as String?,
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
        settingKey: freezed == settingKey
            ? _value.settingKey
            : settingKey // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TabSettingImpl implements _TabSetting {
  const _$TabSettingImpl({
    this.settingName,
    this.isEnabled = false,
    this.settingKey,
  });

  factory _$TabSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabSettingImplFromJson(json);

  @override
  final String? settingName;
  @override
  @JsonKey()
  final bool isEnabled;
  @override
  final String? settingKey;

  @override
  String toString() {
    return 'TabSetting(settingName: $settingName, isEnabled: $isEnabled, settingKey: $settingKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabSettingImpl &&
            (identical(other.settingName, settingName) ||
                other.settingName == settingName) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled) &&
            (identical(other.settingKey, settingKey) ||
                other.settingKey == settingKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, settingName, isEnabled, settingKey);

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TabSettingImplCopyWith<_$TabSettingImpl> get copyWith =>
      __$$TabSettingImplCopyWithImpl<_$TabSettingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TabSettingImplToJson(this);
  }
}

abstract class _TabSetting implements TabSetting {
  const factory _TabSetting({
    final String? settingName,
    final bool isEnabled,
    final String? settingKey,
  }) = _$TabSettingImpl;

  factory _TabSetting.fromJson(Map<String, dynamic> json) =
      _$TabSettingImpl.fromJson;

  @override
  String? get settingName;
  @override
  bool get isEnabled;
  @override
  String? get settingKey;

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabSettingImplCopyWith<_$TabSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
