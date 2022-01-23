// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseTearOff {
  const _$CourseTearOff();

  _Course call(
      {required String courseName,
      required String progress,
      required List<Curriculum> curriculum}) {
    return _Course(
      courseName: courseName,
      progress: progress,
      curriculum: curriculum,
    );
  }
}

/// @nodoc
const $Course = _$CourseTearOff();

/// @nodoc
mixin _$Course {
  String get courseName => throw _privateConstructorUsedError;
  String get progress => throw _privateConstructorUsedError;
  List<Curriculum> get curriculum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res>;
  $Res call({String courseName, String progress, List<Curriculum> curriculum});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res> implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  final Course _value;
  // ignore: unused_field
  final $Res Function(Course) _then;

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
              as String,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String,
      curriculum: curriculum == freezed
          ? _value.curriculum
          : curriculum // ignore: cast_nullable_to_non_nullable
              as List<Curriculum>,
    ));
  }
}

/// @nodoc
abstract class _$CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$CourseCopyWith(_Course value, $Res Function(_Course) then) =
      __$CourseCopyWithImpl<$Res>;
  @override
  $Res call({String courseName, String progress, List<Curriculum> curriculum});
}

/// @nodoc
class __$CourseCopyWithImpl<$Res> extends _$CourseCopyWithImpl<$Res>
    implements _$CourseCopyWith<$Res> {
  __$CourseCopyWithImpl(_Course _value, $Res Function(_Course) _then)
      : super(_value, (v) => _then(v as _Course));

  @override
  _Course get _value => super._value as _Course;

  @override
  $Res call({
    Object? courseName = freezed,
    Object? progress = freezed,
    Object? curriculum = freezed,
  }) {
    return _then(_Course(
      courseName: courseName == freezed
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as String,
      curriculum: curriculum == freezed
          ? _value.curriculum
          : curriculum // ignore: cast_nullable_to_non_nullable
              as List<Curriculum>,
    ));
  }
}

/// @nodoc

class _$_Course implements _Course {
  const _$_Course(
      {required this.courseName,
      required this.progress,
      required this.curriculum});

  @override
  final String courseName;
  @override
  final String progress;
  @override
  final List<Curriculum> curriculum;

  @override
  String toString() {
    return 'Course(courseName: $courseName, progress: $progress, curriculum: $curriculum)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Course &&
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
  _$CourseCopyWith<_Course> get copyWith =>
      __$CourseCopyWithImpl<_Course>(this, _$identity);
}

abstract class _Course implements Course {
  const factory _Course(
      {required String courseName,
      required String progress,
      required List<Curriculum> curriculum}) = _$_Course;

  @override
  String get courseName;
  @override
  String get progress;
  @override
  List<Curriculum> get curriculum;
  @override
  @JsonKey(ignore: true)
  _$CourseCopyWith<_Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$CurriculumTearOff {
  const _$CurriculumTearOff();

  _Curriculum call(
      {required int key,
      required dynamic id,
      required String type,
      required String title,
      required int duration,
      required String content,
      required List<dynamic> meta,
      required int status,
      required String onlineVideoLink,
      required String offlineVideoLink}) {
    return _Curriculum(
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
}

/// @nodoc
const $Curriculum = _$CurriculumTearOff();

/// @nodoc
mixin _$Curriculum {
  int get key => throw _privateConstructorUsedError;
  dynamic get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get duration => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  List<dynamic> get meta => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get onlineVideoLink => throw _privateConstructorUsedError;
  String get offlineVideoLink => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurriculumCopyWith<Curriculum> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurriculumCopyWith<$Res> {
  factory $CurriculumCopyWith(
          Curriculum value, $Res Function(Curriculum) then) =
      _$CurriculumCopyWithImpl<$Res>;
  $Res call(
      {int key,
      dynamic id,
      String type,
      String title,
      int duration,
      String content,
      List<dynamic> meta,
      int status,
      String onlineVideoLink,
      String offlineVideoLink});
}

/// @nodoc
class _$CurriculumCopyWithImpl<$Res> implements $CurriculumCopyWith<$Res> {
  _$CurriculumCopyWithImpl(this._value, this._then);

  final Curriculum _value;
  // ignore: unused_field
  final $Res Function(Curriculum) _then;

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
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      onlineVideoLink: onlineVideoLink == freezed
          ? _value.onlineVideoLink
          : onlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
      offlineVideoLink: offlineVideoLink == freezed
          ? _value.offlineVideoLink
          : offlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CurriculumCopyWith<$Res> implements $CurriculumCopyWith<$Res> {
  factory _$CurriculumCopyWith(
          _Curriculum value, $Res Function(_Curriculum) then) =
      __$CurriculumCopyWithImpl<$Res>;
  @override
  $Res call(
      {int key,
      dynamic id,
      String type,
      String title,
      int duration,
      String content,
      List<dynamic> meta,
      int status,
      String onlineVideoLink,
      String offlineVideoLink});
}

/// @nodoc
class __$CurriculumCopyWithImpl<$Res> extends _$CurriculumCopyWithImpl<$Res>
    implements _$CurriculumCopyWith<$Res> {
  __$CurriculumCopyWithImpl(
      _Curriculum _value, $Res Function(_Curriculum) _then)
      : super(_value, (v) => _then(v as _Curriculum));

  @override
  _Curriculum get _value => super._value as _Curriculum;

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
    return _then(_Curriculum(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as int,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      meta: meta == freezed
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      onlineVideoLink: onlineVideoLink == freezed
          ? _value.onlineVideoLink
          : onlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
      offlineVideoLink: offlineVideoLink == freezed
          ? _value.offlineVideoLink
          : offlineVideoLink // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Curriculum implements _Curriculum {
  const _$_Curriculum(
      {required this.key,
      required this.id,
      required this.type,
      required this.title,
      required this.duration,
      required this.content,
      required this.meta,
      required this.status,
      required this.onlineVideoLink,
      required this.offlineVideoLink});

  @override
  final int key;
  @override
  final dynamic id;
  @override
  final String type;
  @override
  final String title;
  @override
  final int duration;
  @override
  final String content;
  @override
  final List<dynamic> meta;
  @override
  final int status;
  @override
  final String onlineVideoLink;
  @override
  final String offlineVideoLink;

  @override
  String toString() {
    return 'Curriculum(key: $key, id: $id, type: $type, title: $title, duration: $duration, content: $content, meta: $meta, status: $status, onlineVideoLink: $onlineVideoLink, offlineVideoLink: $offlineVideoLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Curriculum &&
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
  _$CurriculumCopyWith<_Curriculum> get copyWith =>
      __$CurriculumCopyWithImpl<_Curriculum>(this, _$identity);
}

abstract class _Curriculum implements Curriculum {
  const factory _Curriculum(
      {required int key,
      required dynamic id,
      required String type,
      required String title,
      required int duration,
      required String content,
      required List<dynamic> meta,
      required int status,
      required String onlineVideoLink,
      required String offlineVideoLink}) = _$_Curriculum;

  @override
  int get key;
  @override
  dynamic get id;
  @override
  String get type;
  @override
  String get title;
  @override
  int get duration;
  @override
  String get content;
  @override
  List<dynamic> get meta;
  @override
  int get status;
  @override
  String get onlineVideoLink;
  @override
  String get offlineVideoLink;
  @override
  @JsonKey(ignore: true)
  _$CurriculumCopyWith<_Curriculum> get copyWith =>
      throw _privateConstructorUsedError;
}
