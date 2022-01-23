// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) {
  return _CourseResponse.fromJson(json);
}

/// @nodoc
class _$CourseResponseTearOff {
  const _$CourseResponseTearOff();

  _CourseResponse call(
      {@JsonKey(name: 'course_name') required String? courseName,
      required String? progress,
      required List<CurriculumResponse>? curriculum}) {
    return _CourseResponse(
      courseName: courseName,
      progress: progress,
      curriculum: curriculum,
    );
  }

  CourseResponse fromJson(Map<String, Object?> json) {
    return CourseResponse.fromJson(json);
  }
}

/// @nodoc
const $CourseResponse = _$CourseResponseTearOff();

/// @nodoc
mixin _$CourseResponse {
  @JsonKey(name: 'course_name')
  String? get courseName => throw _privateConstructorUsedError;
  String? get progress => throw _privateConstructorUsedError;
  List<CurriculumResponse>? get curriculum =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseResponseCopyWith<CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseResponseCopyWith<$Res> {
  factory $CourseResponseCopyWith(
          CourseResponse value, $Res Function(CourseResponse) then) =
      _$CourseResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'course_name') String? courseName,
      String? progress,
      List<CurriculumResponse>? curriculum});
}

/// @nodoc
class _$CourseResponseCopyWithImpl<$Res>
    implements $CourseResponseCopyWith<$Res> {
  _$CourseResponseCopyWithImpl(this._value, this._then);

  final CourseResponse _value;
  // ignore: unused_field
  final $Res Function(CourseResponse) _then;

  @override
  $Res call({
    Object? courseName = freezed,
    Object? progress = freezed,
    Object? curriculum = freezed,
  }) {
    return _then(_value.copyWith(
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      curriculum: curriculum == freezed
          ? _value.curriculum
          : curriculum // ignore: cast_nullable_to_non_nullable
              as List<CurriculumResponse>?,
    ));
  }
}

/// @nodoc
abstract class _$CourseResponseCopyWith<$Res>
    implements $CourseResponseCopyWith<$Res> {
  factory _$CourseResponseCopyWith(
          _CourseResponse value, $Res Function(_CourseResponse) then) =
      __$CourseResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'course_name') String? courseName,
      String? progress,
      List<CurriculumResponse>? curriculum});
}

/// @nodoc
class __$CourseResponseCopyWithImpl<$Res>
    extends _$CourseResponseCopyWithImpl<$Res>
    implements _$CourseResponseCopyWith<$Res> {
  __$CourseResponseCopyWithImpl(
      _CourseResponse _value, $Res Function(_CourseResponse) _then)
      : super(_value, (v) => _then(v as _CourseResponse));

  @override
  _CourseResponse get _value => super._value as _CourseResponse;

  @override
  $Res call({
    Object? courseName = freezed,
    Object? progress = freezed,
    Object? curriculum = freezed,
  }) {
    return _then(_CourseResponse(
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String?,
      curriculum: curriculum == freezed
          ? _value.curriculum
          : curriculum // ignore: cast_nullable_to_non_nullable
              as List<CurriculumResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CourseResponse extends _CourseResponse {
  const _$_CourseResponse(
      {@JsonKey(name: 'course_name') required this.courseName,
      required this.progress,
      required this.curriculum})
      : super._();

  factory _$_CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CourseResponseFromJson(json);

  @override
  @JsonKey(name: 'course_name')
  final String? courseName;
  @override
  final String? progress;
  @override
  final List<CurriculumResponse>? curriculum;

  @override
  String toString() {
    return 'CourseResponse(courseName: $courseName, progress: $progress, curriculum: $curriculum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseResponse &&
            const DeepCollectionEquality()
                .equals(other.courseName, courseName) &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality()
                .equals(other.curriculum, curriculum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(courseName),
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(curriculum));

  @JsonKey(ignore: true)
  @override
  _$CourseResponseCopyWith<_CourseResponse> get copyWith =>
      __$CourseResponseCopyWithImpl<_CourseResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseResponseToJson(this);
  }
}

abstract class _CourseResponse extends CourseResponse {
  const factory _CourseResponse(
      {@JsonKey(name: 'course_name') required String? courseName,
      required String? progress,
      required List<CurriculumResponse>? curriculum}) = _$_CourseResponse;
  const _CourseResponse._() : super._();

  factory _CourseResponse.fromJson(Map<String, dynamic> json) =
      _$_CourseResponse.fromJson;

  @override
  @JsonKey(name: 'course_name')
  String? get courseName;
  @override
  String? get progress;
  @override
  List<CurriculumResponse>? get curriculum;
  @override
  @JsonKey(ignore: true)
  _$CourseResponseCopyWith<_CourseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

CurriculumResponse _$CurriculumResponseFromJson(Map<String, dynamic> json) {
  return _CurriculumResponse.fromJson(json);
}

/// @nodoc
class _$CurriculumResponseTearOff {
  const _$CurriculumResponseTearOff();

  _CurriculumResponse call(
      {required int? key,
      required dynamic id,
      required String? type,
      required String? title,
      required int? duration,
      required String? content,
      required List<dynamic>? meta,
      required int? status,
      @JsonKey(name: 'online_video_link') required String? onlineVideoLink,
      @JsonKey(name: 'offline_video_link') required String? offlineVideoLink}) {
    return _CurriculumResponse(
      key: key,
      id: id,
      type: type,
      title: title,
      duration: duration,
      content: content,
      meta: meta,
      status: status,
      onlineVideoLink: onlineVideoLink,
      offlineVideoLink: offlineVideoLink,
    );
  }

  CurriculumResponse fromJson(Map<String, Object?> json) {
    return CurriculumResponse.fromJson(json);
  }
}

/// @nodoc
const $CurriculumResponse = _$CurriculumResponseTearOff();

/// @nodoc
mixin _$CurriculumResponse {
  int? get key => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  int? get duration => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  List<dynamic>? get meta => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'online_video_link')
  String? get onlineVideoLink => throw _privateConstructorUsedError;
  @JsonKey(name: 'offline_video_link')
  String? get offlineVideoLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurriculumResponseCopyWith<CurriculumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurriculumResponseCopyWith<$Res> {
  factory $CurriculumResponseCopyWith(
          CurriculumResponse value, $Res Function(CurriculumResponse) then) =
      _$CurriculumResponseCopyWithImpl<$Res>;
  $Res call(
      {int? key,
      dynamic id,
      String? type,
      String? title,
      int? duration,
      String? content,
      List<dynamic>? meta,
      int? status,
      @JsonKey(name: 'online_video_link') String? onlineVideoLink,
      @JsonKey(name: 'offline_video_link') String? offlineVideoLink});
}

/// @nodoc
class _$CurriculumResponseCopyWithImpl<$Res>
    implements $CurriculumResponseCopyWith<$Res> {
  _$CurriculumResponseCopyWithImpl(this._value, this._then);

  final CurriculumResponse _value;
  // ignore: unused_field
  final $Res Function(CurriculumResponse) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? content = freezed,
    Object? meta = freezed,
    Object? status = freezed,
    Object? onlineVideoLink = freezed,
    Object? offlineVideoLink = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineVideoLink: onlineVideoLink == freezed
          ? _value.onlineVideoLink
          : onlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineVideoLink: offlineVideoLink == freezed
          ? _value.offlineVideoLink
          : offlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CurriculumResponseCopyWith<$Res>
    implements $CurriculumResponseCopyWith<$Res> {
  factory _$CurriculumResponseCopyWith(
          _CurriculumResponse value, $Res Function(_CurriculumResponse) then) =
      __$CurriculumResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? key,
      dynamic id,
      String? type,
      String? title,
      int? duration,
      String? content,
      List<dynamic>? meta,
      int? status,
      @JsonKey(name: 'online_video_link') String? onlineVideoLink,
      @JsonKey(name: 'offline_video_link') String? offlineVideoLink});
}

/// @nodoc
class __$CurriculumResponseCopyWithImpl<$Res>
    extends _$CurriculumResponseCopyWithImpl<$Res>
    implements _$CurriculumResponseCopyWith<$Res> {
  __$CurriculumResponseCopyWithImpl(
      _CurriculumResponse _value, $Res Function(_CurriculumResponse) _then)
      : super(_value, (v) => _then(v as _CurriculumResponse));

  @override
  _CurriculumResponse get _value => super._value as _CurriculumResponse;

  @override
  $Res call({
    Object? key = freezed,
    Object? id = freezed,
    Object? type = freezed,
    Object? title = freezed,
    Object? duration = freezed,
    Object? content = freezed,
    Object? meta = freezed,
    Object? status = freezed,
    Object? onlineVideoLink = freezed,
    Object? offlineVideoLink = freezed,
  }) {
    return _then(_CurriculumResponse(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      onlineVideoLink: onlineVideoLink == freezed
          ? _value.onlineVideoLink
          : onlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
      offlineVideoLink: offlineVideoLink == freezed
          ? _value.offlineVideoLink
          : offlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurriculumResponse extends _CurriculumResponse {
  const _$_CurriculumResponse(
      {required this.key,
      required this.id,
      required this.type,
      required this.title,
      required this.duration,
      required this.content,
      required this.meta,
      required this.status,
      @JsonKey(name: 'online_video_link') required this.onlineVideoLink,
      @JsonKey(name: 'offline_video_link') required this.offlineVideoLink})
      : super._();

  factory _$_CurriculumResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurriculumResponseFromJson(json);

  @override
  final int? key;
  @override
  final dynamic id;
  @override
  final String? type;
  @override
  final String? title;
  @override
  final int? duration;
  @override
  final String? content;
  @override
  final List<dynamic>? meta;
  @override
  final int? status;
  @override
  @JsonKey(name: 'online_video_link')
  final String? onlineVideoLink;
  @override
  @JsonKey(name: 'offline_video_link')
  final String? offlineVideoLink;

  @override
  String toString() {
    return 'CurriculumResponse(key: $key, id: $id, type: $type, title: $title, duration: $duration, content: $content, meta: $meta, status: $status, onlineVideoLink: $onlineVideoLink, offlineVideoLink: $offlineVideoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CurriculumResponse &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.meta, meta) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.onlineVideoLink, onlineVideoLink) &&
            const DeepCollectionEquality()
                .equals(other.offlineVideoLink, offlineVideoLink));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(meta),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(onlineVideoLink),
      const DeepCollectionEquality().hash(offlineVideoLink));

  @JsonKey(ignore: true)
  @override
  _$CurriculumResponseCopyWith<_CurriculumResponse> get copyWith =>
      __$CurriculumResponseCopyWithImpl<_CurriculumResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurriculumResponseToJson(this);
  }
}

abstract class _CurriculumResponse extends CurriculumResponse {
  const factory _CurriculumResponse(
      {required int? key,
      required dynamic id,
      required String? type,
      required String? title,
      required int? duration,
      required String? content,
      required List<dynamic>? meta,
      required int? status,
      @JsonKey(name: 'online_video_link')
          required String? onlineVideoLink,
      @JsonKey(name: 'offline_video_link')
          required String? offlineVideoLink}) = _$_CurriculumResponse;
  const _CurriculumResponse._() : super._();

  factory _CurriculumResponse.fromJson(Map<String, dynamic> json) =
      _$_CurriculumResponse.fromJson;

  @override
  int? get key;
  @override
  dynamic get id;
  @override
  String? get type;
  @override
  String? get title;
  @override
  int? get duration;
  @override
  String? get content;
  @override
  List<dynamic>? get meta;
  @override
  int? get status;
  @override
  @JsonKey(name: 'online_video_link')
  String? get onlineVideoLink;
  @override
  @JsonKey(name: 'offline_video_link')
  String? get offlineVideoLink;
  @override
  @JsonKey(ignore: true)
  _$CurriculumResponseCopyWith<_CurriculumResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
