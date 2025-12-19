// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommunitiesResponse _$CommunitiesResponseFromJson(Map<String, dynamic> json) {
  return _CommunitiesResponse.fromJson(json);
}

/// @nodoc
mixin _$CommunitiesResponse {
  Meta get meta => throw _privateConstructorUsedError;
  List<CommunityData> get data => throw _privateConstructorUsedError;

  /// Serializes this CommunitiesResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunitiesResponseCopyWith<CommunitiesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunitiesResponseCopyWith<$Res> {
  factory $CommunitiesResponseCopyWith(
    CommunitiesResponse value,
    $Res Function(CommunitiesResponse) then,
  ) = _$CommunitiesResponseCopyWithImpl<$Res, CommunitiesResponse>;
  @useResult
  $Res call({Meta meta, List<CommunityData> data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$CommunitiesResponseCopyWithImpl<$Res, $Val extends CommunitiesResponse>
    implements $CommunitiesResponseCopyWith<$Res> {
  _$CommunitiesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meta = null, Object? data = null}) {
    return _then(
      _value.copyWith(
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as Meta,
            data: null == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as List<CommunityData>,
          )
          as $Val,
    );
  }

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunitiesResponseImplCopyWith<$Res>
    implements $CommunitiesResponseCopyWith<$Res> {
  factory _$$CommunitiesResponseImplCopyWith(
    _$CommunitiesResponseImpl value,
    $Res Function(_$CommunitiesResponseImpl) then,
  ) = __$$CommunitiesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Meta meta, List<CommunityData> data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CommunitiesResponseImplCopyWithImpl<$Res>
    extends _$CommunitiesResponseCopyWithImpl<$Res, _$CommunitiesResponseImpl>
    implements _$$CommunitiesResponseImplCopyWith<$Res> {
  __$$CommunitiesResponseImplCopyWithImpl(
    _$CommunitiesResponseImpl _value,
    $Res Function(_$CommunitiesResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? meta = null, Object? data = null}) {
    return _then(
      _$CommunitiesResponseImpl(
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as Meta,
        data: null == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as List<CommunityData>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunitiesResponseImpl implements _CommunitiesResponse {
  const _$CommunitiesResponseImpl({
    required this.meta,
    required final List<CommunityData> data,
  }) : _data = data;

  factory _$CommunitiesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunitiesResponseImplFromJson(json);

  @override
  final Meta meta;
  final List<CommunityData> _data;
  @override
  List<CommunityData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'CommunitiesResponse(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunitiesResponseImpl &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    meta,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunitiesResponseImplCopyWith<_$CommunitiesResponseImpl> get copyWith =>
      __$$CommunitiesResponseImplCopyWithImpl<_$CommunitiesResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunitiesResponseImplToJson(this);
  }
}

abstract class _CommunitiesResponse implements CommunitiesResponse {
  const factory _CommunitiesResponse({
    required final Meta meta,
    required final List<CommunityData> data,
  }) = _$CommunitiesResponseImpl;

  factory _CommunitiesResponse.fromJson(Map<String, dynamic> json) =
      _$CommunitiesResponseImpl.fromJson;

  @override
  Meta get meta;
  @override
  List<CommunityData> get data;

  /// Create a copy of CommunitiesResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunitiesResponseImplCopyWith<_$CommunitiesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'per_page')
  int get perPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_page')
  int get currentPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page')
  int get lastPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page')
  int get firstPage => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'previous_page_url')
  String? get previousPageUrl => throw _privateConstructorUsedError;

  /// Serializes this Meta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'per_page') int perPage,
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'last_page') int lastPage,
    @JsonKey(name: 'first_page') int firstPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'previous_page_url') String? previousPageUrl,
  });
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? perPage = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? firstPage = null,
    Object? firstPageUrl = freezed,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? previousPageUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                      as int,
            perPage: null == perPage
                ? _value.perPage
                : perPage // ignore: cast_nullable_to_non_nullable
                      as int,
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
            lastPage: null == lastPage
                ? _value.lastPage
                : lastPage // ignore: cast_nullable_to_non_nullable
                      as int,
            firstPage: null == firstPage
                ? _value.firstPage
                : firstPage // ignore: cast_nullable_to_non_nullable
                      as int,
            firstPageUrl: freezed == firstPageUrl
                ? _value.firstPageUrl
                : firstPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            lastPageUrl: freezed == lastPageUrl
                ? _value.lastPageUrl
                : lastPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            nextPageUrl: freezed == nextPageUrl
                ? _value.nextPageUrl
                : nextPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
            previousPageUrl: freezed == previousPageUrl
                ? _value.previousPageUrl
                : previousPageUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
    _$MetaImpl value,
    $Res Function(_$MetaImpl) then,
  ) = __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int total,
    @JsonKey(name: 'per_page') int perPage,
    @JsonKey(name: 'current_page') int currentPage,
    @JsonKey(name: 'last_page') int lastPage,
    @JsonKey(name: 'first_page') int firstPage,
    @JsonKey(name: 'first_page_url') String? firstPageUrl,
    @JsonKey(name: 'last_page_url') String? lastPageUrl,
    @JsonKey(name: 'next_page_url') String? nextPageUrl,
    @JsonKey(name: 'previous_page_url') String? previousPageUrl,
  });
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
    : super(_value, _then);

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? perPage = null,
    Object? currentPage = null,
    Object? lastPage = null,
    Object? firstPage = null,
    Object? firstPageUrl = freezed,
    Object? lastPageUrl = freezed,
    Object? nextPageUrl = freezed,
    Object? previousPageUrl = freezed,
  }) {
    return _then(
      _$MetaImpl(
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
                  as int,
        perPage: null == perPage
            ? _value.perPage
            : perPage // ignore: cast_nullable_to_non_nullable
                  as int,
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
        lastPage: null == lastPage
            ? _value.lastPage
            : lastPage // ignore: cast_nullable_to_non_nullable
                  as int,
        firstPage: null == firstPage
            ? _value.firstPage
            : firstPage // ignore: cast_nullable_to_non_nullable
                  as int,
        firstPageUrl: freezed == firstPageUrl
            ? _value.firstPageUrl
            : firstPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        lastPageUrl: freezed == lastPageUrl
            ? _value.lastPageUrl
            : lastPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        nextPageUrl: freezed == nextPageUrl
            ? _value.nextPageUrl
            : nextPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
        previousPageUrl: freezed == previousPageUrl
            ? _value.previousPageUrl
            : previousPageUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl implements _Meta {
  const _$MetaImpl({
    required this.total,
    @JsonKey(name: 'per_page') required this.perPage,
    @JsonKey(name: 'current_page') required this.currentPage,
    @JsonKey(name: 'last_page') required this.lastPage,
    @JsonKey(name: 'first_page') required this.firstPage,
    @JsonKey(name: 'first_page_url') this.firstPageUrl,
    @JsonKey(name: 'last_page_url') this.lastPageUrl,
    @JsonKey(name: 'next_page_url') this.nextPageUrl,
    @JsonKey(name: 'previous_page_url') this.previousPageUrl,
  });

  factory _$MetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaImplFromJson(json);

  @override
  final int total;
  @override
  @JsonKey(name: 'per_page')
  final int perPage;
  @override
  @JsonKey(name: 'current_page')
  final int currentPage;
  @override
  @JsonKey(name: 'last_page')
  final int lastPage;
  @override
  @JsonKey(name: 'first_page')
  final int firstPage;
  @override
  @JsonKey(name: 'first_page_url')
  final String? firstPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  final String? lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  final String? nextPageUrl;
  @override
  @JsonKey(name: 'previous_page_url')
  final String? previousPageUrl;

  @override
  String toString() {
    return 'Meta(total: $total, perPage: $perPage, currentPage: $currentPage, lastPage: $lastPage, firstPage: $firstPage, firstPageUrl: $firstPageUrl, lastPageUrl: $lastPageUrl, nextPageUrl: $nextPageUrl, previousPageUrl: $previousPageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.perPage, perPage) || other.perPage == perPage) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.lastPage, lastPage) ||
                other.lastPage == lastPage) &&
            (identical(other.firstPage, firstPage) ||
                other.firstPage == firstPage) &&
            (identical(other.firstPageUrl, firstPageUrl) ||
                other.firstPageUrl == firstPageUrl) &&
            (identical(other.lastPageUrl, lastPageUrl) ||
                other.lastPageUrl == lastPageUrl) &&
            (identical(other.nextPageUrl, nextPageUrl) ||
                other.nextPageUrl == nextPageUrl) &&
            (identical(other.previousPageUrl, previousPageUrl) ||
                other.previousPageUrl == previousPageUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    perPage,
    currentPage,
    lastPage,
    firstPage,
    firstPageUrl,
    lastPageUrl,
    nextPageUrl,
    previousPageUrl,
  );

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(this);
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({
    required final int total,
    @JsonKey(name: 'per_page') required final int perPage,
    @JsonKey(name: 'current_page') required final int currentPage,
    @JsonKey(name: 'last_page') required final int lastPage,
    @JsonKey(name: 'first_page') required final int firstPage,
    @JsonKey(name: 'first_page_url') final String? firstPageUrl,
    @JsonKey(name: 'last_page_url') final String? lastPageUrl,
    @JsonKey(name: 'next_page_url') final String? nextPageUrl,
    @JsonKey(name: 'previous_page_url') final String? previousPageUrl,
  }) = _$MetaImpl;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$MetaImpl.fromJson;

  @override
  int get total;
  @override
  @JsonKey(name: 'per_page')
  int get perPage;
  @override
  @JsonKey(name: 'current_page')
  int get currentPage;
  @override
  @JsonKey(name: 'last_page')
  int get lastPage;
  @override
  @JsonKey(name: 'first_page')
  int get firstPage;
  @override
  @JsonKey(name: 'first_page_url')
  String? get firstPageUrl;
  @override
  @JsonKey(name: 'last_page_url')
  String? get lastPageUrl;
  @override
  @JsonKey(name: 'next_page_url')
  String? get nextPageUrl;
  @override
  @JsonKey(name: 'previous_page_url')
  String? get previousPageUrl;

  /// Create a copy of Meta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityData _$CommunityDataFromJson(Map<String, dynamic> json) {
  return _CommunityData.fromJson(json);
}

/// @nodoc
mixin _$CommunityData {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int get totalMembers => throw _privateConstructorUsedError;
  String? get thumbnail2 => throw _privateConstructorUsedError;
  int get totalFeeds => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  int? get groupId => throw _privateConstructorUsedError;
  int? get enrollmentId => throw _privateConstructorUsedError;
  String? get expiredAt => throw _privateConstructorUsedError;
  String? get expiryDate => throw _privateConstructorUsedError;
  bool get userHasNotification => throw _privateConstructorUsedError;

  /// Serializes this CommunityData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityDataCopyWith<CommunityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityDataCopyWith<$Res> {
  factory $CommunityDataCopyWith(
    CommunityData value,
    $Res Function(CommunityData) then,
  ) = _$CommunityDataCopyWithImpl<$Res, CommunityData>;
  @useResult
  $Res call({
    int id,
    String title,
    String? thumbnail,
    String? cover,
    String? slug,
    int totalMembers,
    String? thumbnail2,
    int totalFeeds,
    String? status,
    int? groupId,
    int? enrollmentId,
    String? expiredAt,
    String? expiryDate,
    bool userHasNotification,
  });
}

/// @nodoc
class _$CommunityDataCopyWithImpl<$Res, $Val extends CommunityData>
    implements $CommunityDataCopyWith<$Res> {
  _$CommunityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = freezed,
    Object? cover = freezed,
    Object? slug = freezed,
    Object? totalMembers = null,
    Object? thumbnail2 = freezed,
    Object? totalFeeds = null,
    Object? status = freezed,
    Object? groupId = freezed,
    Object? enrollmentId = freezed,
    Object? expiredAt = freezed,
    Object? expiryDate = freezed,
    Object? userHasNotification = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            title: null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String,
            thumbnail: freezed == thumbnail
                ? _value.thumbnail
                : thumbnail // ignore: cast_nullable_to_non_nullable
                      as String?,
            cover: freezed == cover
                ? _value.cover
                : cover // ignore: cast_nullable_to_non_nullable
                      as String?,
            slug: freezed == slug
                ? _value.slug
                : slug // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalMembers: null == totalMembers
                ? _value.totalMembers
                : totalMembers // ignore: cast_nullable_to_non_nullable
                      as int,
            thumbnail2: freezed == thumbnail2
                ? _value.thumbnail2
                : thumbnail2 // ignore: cast_nullable_to_non_nullable
                      as String?,
            totalFeeds: null == totalFeeds
                ? _value.totalFeeds
                : totalFeeds // ignore: cast_nullable_to_non_nullable
                      as int,
            status: freezed == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as String?,
            groupId: freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                      as int?,
            enrollmentId: freezed == enrollmentId
                ? _value.enrollmentId
                : enrollmentId // ignore: cast_nullable_to_non_nullable
                      as int?,
            expiredAt: freezed == expiredAt
                ? _value.expiredAt
                : expiredAt // ignore: cast_nullable_to_non_nullable
                      as String?,
            expiryDate: freezed == expiryDate
                ? _value.expiryDate
                : expiryDate // ignore: cast_nullable_to_non_nullable
                      as String?,
            userHasNotification: null == userHasNotification
                ? _value.userHasNotification
                : userHasNotification // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommunityDataImplCopyWith<$Res>
    implements $CommunityDataCopyWith<$Res> {
  factory _$$CommunityDataImplCopyWith(
    _$CommunityDataImpl value,
    $Res Function(_$CommunityDataImpl) then,
  ) = __$$CommunityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String title,
    String? thumbnail,
    String? cover,
    String? slug,
    int totalMembers,
    String? thumbnail2,
    int totalFeeds,
    String? status,
    int? groupId,
    int? enrollmentId,
    String? expiredAt,
    String? expiryDate,
    bool userHasNotification,
  });
}

/// @nodoc
class __$$CommunityDataImplCopyWithImpl<$Res>
    extends _$CommunityDataCopyWithImpl<$Res, _$CommunityDataImpl>
    implements _$$CommunityDataImplCopyWith<$Res> {
  __$$CommunityDataImplCopyWithImpl(
    _$CommunityDataImpl _value,
    $Res Function(_$CommunityDataImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? thumbnail = freezed,
    Object? cover = freezed,
    Object? slug = freezed,
    Object? totalMembers = null,
    Object? thumbnail2 = freezed,
    Object? totalFeeds = null,
    Object? status = freezed,
    Object? groupId = freezed,
    Object? enrollmentId = freezed,
    Object? expiredAt = freezed,
    Object? expiryDate = freezed,
    Object? userHasNotification = null,
  }) {
    return _then(
      _$CommunityDataImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        title: null == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String,
        thumbnail: freezed == thumbnail
            ? _value.thumbnail
            : thumbnail // ignore: cast_nullable_to_non_nullable
                  as String?,
        cover: freezed == cover
            ? _value.cover
            : cover // ignore: cast_nullable_to_non_nullable
                  as String?,
        slug: freezed == slug
            ? _value.slug
            : slug // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalMembers: null == totalMembers
            ? _value.totalMembers
            : totalMembers // ignore: cast_nullable_to_non_nullable
                  as int,
        thumbnail2: freezed == thumbnail2
            ? _value.thumbnail2
            : thumbnail2 // ignore: cast_nullable_to_non_nullable
                  as String?,
        totalFeeds: null == totalFeeds
            ? _value.totalFeeds
            : totalFeeds // ignore: cast_nullable_to_non_nullable
                  as int,
        status: freezed == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as String?,
        groupId: freezed == groupId
            ? _value.groupId
            : groupId // ignore: cast_nullable_to_non_nullable
                  as int?,
        enrollmentId: freezed == enrollmentId
            ? _value.enrollmentId
            : enrollmentId // ignore: cast_nullable_to_non_nullable
                  as int?,
        expiredAt: freezed == expiredAt
            ? _value.expiredAt
            : expiredAt // ignore: cast_nullable_to_non_nullable
                  as String?,
        expiryDate: freezed == expiryDate
            ? _value.expiryDate
            : expiryDate // ignore: cast_nullable_to_non_nullable
                  as String?,
        userHasNotification: null == userHasNotification
            ? _value.userHasNotification
            : userHasNotification // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityDataImpl implements _CommunityData {
  const _$CommunityDataImpl({
    required this.id,
    required this.title,
    this.thumbnail,
    this.cover,
    this.slug,
    this.totalMembers = 0,
    this.thumbnail2,
    this.totalFeeds = 0,
    this.status,
    this.groupId,
    this.enrollmentId,
    this.expiredAt,
    this.expiryDate,
    this.userHasNotification = false,
  });

  factory _$CommunityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityDataImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String? thumbnail;
  @override
  final String? cover;
  @override
  final String? slug;
  @override
  @JsonKey()
  final int totalMembers;
  @override
  final String? thumbnail2;
  @override
  @JsonKey()
  final int totalFeeds;
  @override
  final String? status;
  @override
  final int? groupId;
  @override
  final int? enrollmentId;
  @override
  final String? expiredAt;
  @override
  final String? expiryDate;
  @override
  @JsonKey()
  final bool userHasNotification;

  @override
  String toString() {
    return 'CommunityData(id: $id, title: $title, thumbnail: $thumbnail, cover: $cover, slug: $slug, totalMembers: $totalMembers, thumbnail2: $thumbnail2, totalFeeds: $totalFeeds, status: $status, groupId: $groupId, enrollmentId: $enrollmentId, expiredAt: $expiredAt, expiryDate: $expiryDate, userHasNotification: $userHasNotification)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.totalMembers, totalMembers) ||
                other.totalMembers == totalMembers) &&
            (identical(other.thumbnail2, thumbnail2) ||
                other.thumbnail2 == thumbnail2) &&
            (identical(other.totalFeeds, totalFeeds) ||
                other.totalFeeds == totalFeeds) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.enrollmentId, enrollmentId) ||
                other.enrollmentId == enrollmentId) &&
            (identical(other.expiredAt, expiredAt) ||
                other.expiredAt == expiredAt) &&
            (identical(other.expiryDate, expiryDate) ||
                other.expiryDate == expiryDate) &&
            (identical(other.userHasNotification, userHasNotification) ||
                other.userHasNotification == userHasNotification));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    title,
    thumbnail,
    cover,
    slug,
    totalMembers,
    thumbnail2,
    totalFeeds,
    status,
    groupId,
    enrollmentId,
    expiredAt,
    expiryDate,
    userHasNotification,
  );

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityDataImplCopyWith<_$CommunityDataImpl> get copyWith =>
      __$$CommunityDataImplCopyWithImpl<_$CommunityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityDataImplToJson(this);
  }
}

abstract class _CommunityData implements CommunityData {
  const factory _CommunityData({
    required final int id,
    required final String title,
    final String? thumbnail,
    final String? cover,
    final String? slug,
    final int totalMembers,
    final String? thumbnail2,
    final int totalFeeds,
    final String? status,
    final int? groupId,
    final int? enrollmentId,
    final String? expiredAt,
    final String? expiryDate,
    final bool userHasNotification,
  }) = _$CommunityDataImpl;

  factory _CommunityData.fromJson(Map<String, dynamic> json) =
      _$CommunityDataImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String? get thumbnail;
  @override
  String? get cover;
  @override
  String? get slug;
  @override
  int get totalMembers;
  @override
  String? get thumbnail2;
  @override
  int get totalFeeds;
  @override
  String? get status;
  @override
  int? get groupId;
  @override
  int? get enrollmentId;
  @override
  String? get expiredAt;
  @override
  String? get expiryDate;
  @override
  bool get userHasNotification;

  /// Create a copy of CommunityData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityDataImplCopyWith<_$CommunityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityDetails _$CommunityDetailsFromJson(Map<String, dynamic> json) {
  return _CommunityDetails.fromJson(json);
}

/// @nodoc
mixin _$CommunityDetails {
  int get id => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get profilePic => throw _privateConstructorUsedError;
  String? get groupPrivacy => throw _privateConstructorUsedError;
  CommunityMeta get meta => throw _privateConstructorUsedError;
  List<TabSetting>? get tabSettings => throw _privateConstructorUsedError;
  List<Space>? get spaces => throw _privateConstructorUsedError;

  /// Serializes this CommunityDetails to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityDetailsCopyWith<CommunityDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityDetailsCopyWith<$Res> {
  factory $CommunityDetailsCopyWith(
    CommunityDetails value,
    $Res Function(CommunityDetails) then,
  ) = _$CommunityDetailsCopyWithImpl<$Res, CommunityDetails>;
  @useResult
  $Res call({
    int id,
    String groupName,
    String? about,
    String? cover,
    String? profilePic,
    String? groupPrivacy,
    CommunityMeta meta,
    List<TabSetting>? tabSettings,
    List<Space>? spaces,
  });

  $CommunityMetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$CommunityDetailsCopyWithImpl<$Res, $Val extends CommunityDetails>
    implements $CommunityDetailsCopyWith<$Res> {
  _$CommunityDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? about = freezed,
    Object? cover = freezed,
    Object? profilePic = freezed,
    Object? groupPrivacy = freezed,
    Object? meta = null,
    Object? tabSettings = freezed,
    Object? spaces = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            groupName: null == groupName
                ? _value.groupName
                : groupName // ignore: cast_nullable_to_non_nullable
                      as String,
            about: freezed == about
                ? _value.about
                : about // ignore: cast_nullable_to_non_nullable
                      as String?,
            cover: freezed == cover
                ? _value.cover
                : cover // ignore: cast_nullable_to_non_nullable
                      as String?,
            profilePic: freezed == profilePic
                ? _value.profilePic
                : profilePic // ignore: cast_nullable_to_non_nullable
                      as String?,
            groupPrivacy: freezed == groupPrivacy
                ? _value.groupPrivacy
                : groupPrivacy // ignore: cast_nullable_to_non_nullable
                      as String?,
            meta: null == meta
                ? _value.meta
                : meta // ignore: cast_nullable_to_non_nullable
                      as CommunityMeta,
            tabSettings: freezed == tabSettings
                ? _value.tabSettings
                : tabSettings // ignore: cast_nullable_to_non_nullable
                      as List<TabSetting>?,
            spaces: freezed == spaces
                ? _value.spaces
                : spaces // ignore: cast_nullable_to_non_nullable
                      as List<Space>?,
          )
          as $Val,
    );
  }

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommunityMetaCopyWith<$Res> get meta {
    return $CommunityMetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommunityDetailsImplCopyWith<$Res>
    implements $CommunityDetailsCopyWith<$Res> {
  factory _$$CommunityDetailsImplCopyWith(
    _$CommunityDetailsImpl value,
    $Res Function(_$CommunityDetailsImpl) then,
  ) = __$$CommunityDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String groupName,
    String? about,
    String? cover,
    String? profilePic,
    String? groupPrivacy,
    CommunityMeta meta,
    List<TabSetting>? tabSettings,
    List<Space>? spaces,
  });

  @override
  $CommunityMetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$CommunityDetailsImplCopyWithImpl<$Res>
    extends _$CommunityDetailsCopyWithImpl<$Res, _$CommunityDetailsImpl>
    implements _$$CommunityDetailsImplCopyWith<$Res> {
  __$$CommunityDetailsImplCopyWithImpl(
    _$CommunityDetailsImpl _value,
    $Res Function(_$CommunityDetailsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? groupName = null,
    Object? about = freezed,
    Object? cover = freezed,
    Object? profilePic = freezed,
    Object? groupPrivacy = freezed,
    Object? meta = null,
    Object? tabSettings = freezed,
    Object? spaces = freezed,
  }) {
    return _then(
      _$CommunityDetailsImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        groupName: null == groupName
            ? _value.groupName
            : groupName // ignore: cast_nullable_to_non_nullable
                  as String,
        about: freezed == about
            ? _value.about
            : about // ignore: cast_nullable_to_non_nullable
                  as String?,
        cover: freezed == cover
            ? _value.cover
            : cover // ignore: cast_nullable_to_non_nullable
                  as String?,
        profilePic: freezed == profilePic
            ? _value.profilePic
            : profilePic // ignore: cast_nullable_to_non_nullable
                  as String?,
        groupPrivacy: freezed == groupPrivacy
            ? _value.groupPrivacy
            : groupPrivacy // ignore: cast_nullable_to_non_nullable
                  as String?,
        meta: null == meta
            ? _value.meta
            : meta // ignore: cast_nullable_to_non_nullable
                  as CommunityMeta,
        tabSettings: freezed == tabSettings
            ? _value._tabSettings
            : tabSettings // ignore: cast_nullable_to_non_nullable
                  as List<TabSetting>?,
        spaces: freezed == spaces
            ? _value._spaces
            : spaces // ignore: cast_nullable_to_non_nullable
                  as List<Space>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityDetailsImpl implements _CommunityDetails {
  const _$CommunityDetailsImpl({
    required this.id,
    required this.groupName,
    this.about,
    this.cover,
    this.profilePic,
    this.groupPrivacy,
    required this.meta,
    final List<TabSetting>? tabSettings,
    final List<Space>? spaces,
  }) : _tabSettings = tabSettings,
       _spaces = spaces;

  factory _$CommunityDetailsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityDetailsImplFromJson(json);

  @override
  final int id;
  @override
  final String groupName;
  @override
  final String? about;
  @override
  final String? cover;
  @override
  final String? profilePic;
  @override
  final String? groupPrivacy;
  @override
  final CommunityMeta meta;
  final List<TabSetting>? _tabSettings;
  @override
  List<TabSetting>? get tabSettings {
    final value = _tabSettings;
    if (value == null) return null;
    if (_tabSettings is EqualUnmodifiableListView) return _tabSettings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Space>? _spaces;
  @override
  List<Space>? get spaces {
    final value = _spaces;
    if (value == null) return null;
    if (_spaces is EqualUnmodifiableListView) return _spaces;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommunityDetails(id: $id, groupName: $groupName, about: $about, cover: $cover, profilePic: $profilePic, groupPrivacy: $groupPrivacy, meta: $meta, tabSettings: $tabSettings, spaces: $spaces)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityDetailsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.groupPrivacy, groupPrivacy) ||
                other.groupPrivacy == groupPrivacy) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(
              other._tabSettings,
              _tabSettings,
            ) &&
            const DeepCollectionEquality().equals(other._spaces, _spaces));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    groupName,
    about,
    cover,
    profilePic,
    groupPrivacy,
    meta,
    const DeepCollectionEquality().hash(_tabSettings),
    const DeepCollectionEquality().hash(_spaces),
  );

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityDetailsImplCopyWith<_$CommunityDetailsImpl> get copyWith =>
      __$$CommunityDetailsImplCopyWithImpl<_$CommunityDetailsImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityDetailsImplToJson(this);
  }
}

abstract class _CommunityDetails implements CommunityDetails {
  const factory _CommunityDetails({
    required final int id,
    required final String groupName,
    final String? about,
    final String? cover,
    final String? profilePic,
    final String? groupPrivacy,
    required final CommunityMeta meta,
    final List<TabSetting>? tabSettings,
    final List<Space>? spaces,
  }) = _$CommunityDetailsImpl;

  factory _CommunityDetails.fromJson(Map<String, dynamic> json) =
      _$CommunityDetailsImpl.fromJson;

  @override
  int get id;
  @override
  String get groupName;
  @override
  String? get about;
  @override
  String? get cover;
  @override
  String? get profilePic;
  @override
  String? get groupPrivacy;
  @override
  CommunityMeta get meta;
  @override
  List<TabSetting>? get tabSettings;
  @override
  List<Space>? get spaces;

  /// Create a copy of CommunityDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityDetailsImplCopyWith<_$CommunityDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CommunityMeta _$CommunityMetaFromJson(Map<String, dynamic> json) {
  return _CommunityMeta.fromJson(json);
}

/// @nodoc
mixin _$CommunityMeta {
  int get membersCount => throw _privateConstructorUsedError;
  int get feedsCount => throw _privateConstructorUsedError;

  /// Serializes this CommunityMeta to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommunityMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityMetaCopyWith<CommunityMeta> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityMetaCopyWith<$Res> {
  factory $CommunityMetaCopyWith(
    CommunityMeta value,
    $Res Function(CommunityMeta) then,
  ) = _$CommunityMetaCopyWithImpl<$Res, CommunityMeta>;
  @useResult
  $Res call({int membersCount, int feedsCount});
}

/// @nodoc
class _$CommunityMetaCopyWithImpl<$Res, $Val extends CommunityMeta>
    implements $CommunityMetaCopyWith<$Res> {
  _$CommunityMetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommunityMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? membersCount = null, Object? feedsCount = null}) {
    return _then(
      _value.copyWith(
            membersCount: null == membersCount
                ? _value.membersCount
                : membersCount // ignore: cast_nullable_to_non_nullable
                      as int,
            feedsCount: null == feedsCount
                ? _value.feedsCount
                : feedsCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CommunityMetaImplCopyWith<$Res>
    implements $CommunityMetaCopyWith<$Res> {
  factory _$$CommunityMetaImplCopyWith(
    _$CommunityMetaImpl value,
    $Res Function(_$CommunityMetaImpl) then,
  ) = __$$CommunityMetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int membersCount, int feedsCount});
}

/// @nodoc
class __$$CommunityMetaImplCopyWithImpl<$Res>
    extends _$CommunityMetaCopyWithImpl<$Res, _$CommunityMetaImpl>
    implements _$$CommunityMetaImplCopyWith<$Res> {
  __$$CommunityMetaImplCopyWithImpl(
    _$CommunityMetaImpl _value,
    $Res Function(_$CommunityMetaImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommunityMeta
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? membersCount = null, Object? feedsCount = null}) {
    return _then(
      _$CommunityMetaImpl(
        membersCount: null == membersCount
            ? _value.membersCount
            : membersCount // ignore: cast_nullable_to_non_nullable
                  as int,
        feedsCount: null == feedsCount
            ? _value.feedsCount
            : feedsCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CommunityMetaImpl implements _CommunityMeta {
  const _$CommunityMetaImpl({this.membersCount = 0, this.feedsCount = 0});

  factory _$CommunityMetaImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityMetaImplFromJson(json);

  @override
  @JsonKey()
  final int membersCount;
  @override
  @JsonKey()
  final int feedsCount;

  @override
  String toString() {
    return 'CommunityMeta(membersCount: $membersCount, feedsCount: $feedsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityMetaImpl &&
            (identical(other.membersCount, membersCount) ||
                other.membersCount == membersCount) &&
            (identical(other.feedsCount, feedsCount) ||
                other.feedsCount == feedsCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, membersCount, feedsCount);

  /// Create a copy of CommunityMeta
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityMetaImplCopyWith<_$CommunityMetaImpl> get copyWith =>
      __$$CommunityMetaImplCopyWithImpl<_$CommunityMetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityMetaImplToJson(this);
  }
}

abstract class _CommunityMeta implements CommunityMeta {
  const factory _CommunityMeta({final int membersCount, final int feedsCount}) =
      _$CommunityMetaImpl;

  factory _CommunityMeta.fromJson(Map<String, dynamic> json) =
      _$CommunityMetaImpl.fromJson;

  @override
  int get membersCount;
  @override
  int get feedsCount;

  /// Create a copy of CommunityMeta
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityMetaImplCopyWith<_$CommunityMetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TabSetting _$TabSettingFromJson(Map<String, dynamic> json) {
  return _TabSetting.fromJson(json);
}

/// @nodoc
mixin _$TabSetting {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  bool get isEnabled => throw _privateConstructorUsedError;

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
  $Res call({int id, String name, bool isEnabled});
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
    Object? id = null,
    Object? name = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            isEnabled: null == isEnabled
                ? _value.isEnabled
                : isEnabled // ignore: cast_nullable_to_non_nullable
                      as bool,
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
  $Res call({int id, String name, bool isEnabled});
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
    Object? id = null,
    Object? name = null,
    Object? isEnabled = null,
  }) {
    return _then(
      _$TabSettingImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        isEnabled: null == isEnabled
            ? _value.isEnabled
            : isEnabled // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TabSettingImpl implements _TabSetting {
  const _$TabSettingImpl({
    required this.id,
    required this.name,
    this.isEnabled = true,
  });

  factory _$TabSettingImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabSettingImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final bool isEnabled;

  @override
  String toString() {
    return 'TabSetting(id: $id, name: $name, isEnabled: $isEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabSettingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isEnabled, isEnabled) ||
                other.isEnabled == isEnabled));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, isEnabled);

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
    required final int id,
    required final String name,
    final bool isEnabled,
  }) = _$TabSettingImpl;

  factory _TabSetting.fromJson(Map<String, dynamic> json) =
      _$TabSettingImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  bool get isEnabled;

  /// Create a copy of TabSetting
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TabSettingImplCopyWith<_$TabSettingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Space _$SpaceFromJson(Map<String, dynamic> json) {
  return _Space.fromJson(json);
}

/// @nodoc
mixin _$Space {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get memberCount => throw _privateConstructorUsedError;
  bool get isFollowing => throw _privateConstructorUsedError;

  /// Serializes this Space to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Space
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SpaceCopyWith<Space> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpaceCopyWith<$Res> {
  factory $SpaceCopyWith(Space value, $Res Function(Space) then) =
      _$SpaceCopyWithImpl<$Res, Space>;
  @useResult
  $Res call({int id, String name, int memberCount, bool isFollowing});
}

/// @nodoc
class _$SpaceCopyWithImpl<$Res, $Val extends Space>
    implements $SpaceCopyWith<$Res> {
  _$SpaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Space
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? memberCount = null,
    Object? isFollowing = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            memberCount: null == memberCount
                ? _value.memberCount
                : memberCount // ignore: cast_nullable_to_non_nullable
                      as int,
            isFollowing: null == isFollowing
                ? _value.isFollowing
                : isFollowing // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SpaceImplCopyWith<$Res> implements $SpaceCopyWith<$Res> {
  factory _$$SpaceImplCopyWith(
    _$SpaceImpl value,
    $Res Function(_$SpaceImpl) then,
  ) = __$$SpaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int memberCount, bool isFollowing});
}

/// @nodoc
class __$$SpaceImplCopyWithImpl<$Res>
    extends _$SpaceCopyWithImpl<$Res, _$SpaceImpl>
    implements _$$SpaceImplCopyWith<$Res> {
  __$$SpaceImplCopyWithImpl(
    _$SpaceImpl _value,
    $Res Function(_$SpaceImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Space
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? memberCount = null,
    Object? isFollowing = null,
  }) {
    return _then(
      _$SpaceImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        memberCount: null == memberCount
            ? _value.memberCount
            : memberCount // ignore: cast_nullable_to_non_nullable
                  as int,
        isFollowing: null == isFollowing
            ? _value.isFollowing
            : isFollowing // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SpaceImpl implements _Space {
  const _$SpaceImpl({
    required this.id,
    required this.name,
    this.memberCount = 0,
    this.isFollowing = false,
  });

  factory _$SpaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SpaceImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final int memberCount;
  @override
  @JsonKey()
  final bool isFollowing;

  @override
  String toString() {
    return 'Space(id: $id, name: $name, memberCount: $memberCount, isFollowing: $isFollowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SpaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.isFollowing, isFollowing) ||
                other.isFollowing == isFollowing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, memberCount, isFollowing);

  /// Create a copy of Space
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SpaceImplCopyWith<_$SpaceImpl> get copyWith =>
      __$$SpaceImplCopyWithImpl<_$SpaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SpaceImplToJson(this);
  }
}

abstract class _Space implements Space {
  const factory _Space({
    required final int id,
    required final String name,
    final int memberCount,
    final bool isFollowing,
  }) = _$SpaceImpl;

  factory _Space.fromJson(Map<String, dynamic> json) = _$SpaceImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get memberCount;
  @override
  bool get isFollowing;

  /// Create a copy of Space
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SpaceImplCopyWith<_$SpaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiSuccessResponse _$ApiSuccessResponseFromJson(Map<String, dynamic> json) {
  return _ApiSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiSuccessResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Map<String, dynamic>? get data => throw _privateConstructorUsedError;

  /// Serializes this ApiSuccessResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiSuccessResponseCopyWith<ApiSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiSuccessResponseCopyWith<$Res> {
  factory $ApiSuccessResponseCopyWith(
    ApiSuccessResponse value,
    $Res Function(ApiSuccessResponse) then,
  ) = _$ApiSuccessResponseCopyWithImpl<$Res, ApiSuccessResponse>;
  @useResult
  $Res call({bool success, String? message, Map<String, dynamic>? data});
}

/// @nodoc
class _$ApiSuccessResponseCopyWithImpl<$Res, $Val extends ApiSuccessResponse>
    implements $ApiSuccessResponseCopyWith<$Res> {
  _$ApiSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            data: freezed == data
                ? _value.data
                : data // ignore: cast_nullable_to_non_nullable
                      as Map<String, dynamic>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiSuccessResponseImplCopyWith<$Res>
    implements $ApiSuccessResponseCopyWith<$Res> {
  factory _$$ApiSuccessResponseImplCopyWith(
    _$ApiSuccessResponseImpl value,
    $Res Function(_$ApiSuccessResponseImpl) then,
  ) = __$$ApiSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, Map<String, dynamic>? data});
}

/// @nodoc
class __$$ApiSuccessResponseImplCopyWithImpl<$Res>
    extends _$ApiSuccessResponseCopyWithImpl<$Res, _$ApiSuccessResponseImpl>
    implements _$$ApiSuccessResponseImplCopyWith<$Res> {
  __$$ApiSuccessResponseImplCopyWithImpl(
    _$ApiSuccessResponseImpl _value,
    $Res Function(_$ApiSuccessResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(
      _$ApiSuccessResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        data: freezed == data
            ? _value._data
            : data // ignore: cast_nullable_to_non_nullable
                  as Map<String, dynamic>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiSuccessResponseImpl implements _ApiSuccessResponse {
  const _$ApiSuccessResponseImpl({
    this.success = true,
    this.message,
    final Map<String, dynamic>? data,
  }) : _data = data;

  factory _$ApiSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiSuccessResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  final Map<String, dynamic>? _data;
  @override
  Map<String, dynamic>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiSuccessResponse(success: $success, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiSuccessResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    success,
    message,
    const DeepCollectionEquality().hash(_data),
  );

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiSuccessResponseImplCopyWith<_$ApiSuccessResponseImpl> get copyWith =>
      __$$ApiSuccessResponseImplCopyWithImpl<_$ApiSuccessResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiSuccessResponseImplToJson(this);
  }
}

abstract class _ApiSuccessResponse implements ApiSuccessResponse {
  const factory _ApiSuccessResponse({
    final bool success,
    final String? message,
    final Map<String, dynamic>? data,
  }) = _$ApiSuccessResponseImpl;

  factory _ApiSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$ApiSuccessResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  Map<String, dynamic>? get data;

  /// Create a copy of ApiSuccessResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiSuccessResponseImplCopyWith<_$ApiSuccessResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ApiErrorResponse _$ApiErrorResponseFromJson(Map<String, dynamic> json) {
  return _ApiErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$ApiErrorResponse {
  bool get success => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;

  /// Serializes this ApiErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiErrorResponseCopyWith<ApiErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiErrorResponseCopyWith<$Res> {
  factory $ApiErrorResponseCopyWith(
    ApiErrorResponse value,
    $Res Function(ApiErrorResponse) then,
  ) = _$ApiErrorResponseCopyWithImpl<$Res, ApiErrorResponse>;
  @useResult
  $Res call({bool success, String? message, String? error, int statusCode});
}

/// @nodoc
class _$ApiErrorResponseCopyWithImpl<$Res, $Val extends ApiErrorResponse>
    implements $ApiErrorResponseCopyWith<$Res> {
  _$ApiErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? error = freezed,
    Object? statusCode = null,
  }) {
    return _then(
      _value.copyWith(
            success: null == success
                ? _value.success
                : success // ignore: cast_nullable_to_non_nullable
                      as bool,
            message: freezed == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                      as String?,
            error: freezed == error
                ? _value.error
                : error // ignore: cast_nullable_to_non_nullable
                      as String?,
            statusCode: null == statusCode
                ? _value.statusCode
                : statusCode // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ApiErrorResponseImplCopyWith<$Res>
    implements $ApiErrorResponseCopyWith<$Res> {
  factory _$$ApiErrorResponseImplCopyWith(
    _$ApiErrorResponseImpl value,
    $Res Function(_$ApiErrorResponseImpl) then,
  ) = __$$ApiErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, String? message, String? error, int statusCode});
}

/// @nodoc
class __$$ApiErrorResponseImplCopyWithImpl<$Res>
    extends _$ApiErrorResponseCopyWithImpl<$Res, _$ApiErrorResponseImpl>
    implements _$$ApiErrorResponseImplCopyWith<$Res> {
  __$$ApiErrorResponseImplCopyWithImpl(
    _$ApiErrorResponseImpl _value,
    $Res Function(_$ApiErrorResponseImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? message = freezed,
    Object? error = freezed,
    Object? statusCode = null,
  }) {
    return _then(
      _$ApiErrorResponseImpl(
        success: null == success
            ? _value.success
            : success // ignore: cast_nullable_to_non_nullable
                  as bool,
        message: freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
        error: freezed == error
            ? _value.error
            : error // ignore: cast_nullable_to_non_nullable
                  as String?,
        statusCode: null == statusCode
            ? _value.statusCode
            : statusCode // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ApiErrorResponseImpl implements _ApiErrorResponse {
  const _$ApiErrorResponseImpl({
    this.success = false,
    this.message,
    this.error,
    this.statusCode = 400,
  });

  factory _$ApiErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiErrorResponseImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final String? message;
  @override
  final String? error;
  @override
  @JsonKey()
  final int statusCode;

  @override
  String toString() {
    return 'ApiErrorResponse(success: $success, message: $message, error: $error, statusCode: $statusCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiErrorResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, message, error, statusCode);

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      __$$ApiErrorResponseImplCopyWithImpl<_$ApiErrorResponseImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiErrorResponseImplToJson(this);
  }
}

abstract class _ApiErrorResponse implements ApiErrorResponse {
  const factory _ApiErrorResponse({
    final bool success,
    final String? message,
    final String? error,
    final int statusCode,
  }) = _$ApiErrorResponseImpl;

  factory _ApiErrorResponse.fromJson(Map<String, dynamic> json) =
      _$ApiErrorResponseImpl.fromJson;

  @override
  bool get success;
  @override
  String? get message;
  @override
  String? get error;
  @override
  int get statusCode;

  /// Create a copy of ApiErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiErrorResponseImplCopyWith<_$ApiErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
