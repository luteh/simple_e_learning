// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CourseStateTearOff {
  const _$CourseStateTearOff();

  _CourseState call(
      {required Curriculum? selectedCurriculumUnit,
      required ResultState<File?> getSelectedVideoCacheResult,
      required List<Curriculum> curriculums}) {
    return _CourseState(
      selectedCurriculumUnit: selectedCurriculumUnit,
      getSelectedVideoCacheResult: getSelectedVideoCacheResult,
      curriculums: curriculums,
    );
  }
}

/// @nodoc
const $CourseState = _$CourseStateTearOff();

/// @nodoc
mixin _$CourseState {
  Curriculum? get selectedCurriculumUnit => throw _privateConstructorUsedError;
  ResultState<File?> get getSelectedVideoCacheResult =>
      throw _privateConstructorUsedError;
  List<Curriculum> get curriculums => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res>;
  $Res call(
      {Curriculum? selectedCurriculumUnit,
      ResultState<File?> getSelectedVideoCacheResult,
      List<Curriculum> curriculums});

  $CurriculumCopyWith<$Res>? get selectedCurriculumUnit;
  $ResultStateCopyWith<File?, $Res> get getSelectedVideoCacheResult;
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res> implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  final CourseState _value;
  // ignore: unused_field
  final $Res Function(CourseState) _then;

  @override
  $Res call({
    Object? selectedCurriculumUnit = freezed,
    Object? getSelectedVideoCacheResult = freezed,
    Object? curriculums = freezed,
  }) {
    return _then(_value.copyWith(
      selectedCurriculumUnit: selectedCurriculumUnit == freezed
          ? _value.selectedCurriculumUnit
          : selectedCurriculumUnit // ignore: cast_nullable_to_non_nullable
              as Curriculum?,
      getSelectedVideoCacheResult: getSelectedVideoCacheResult == freezed
          ? _value.getSelectedVideoCacheResult
          : getSelectedVideoCacheResult // ignore: cast_nullable_to_non_nullable
              as ResultState<File?>,
      curriculums: curriculums == freezed
          ? _value.curriculums
          : curriculums // ignore: cast_nullable_to_non_nullable
              as List<Curriculum>,
    ));
  }

  @override
  $CurriculumCopyWith<$Res>? get selectedCurriculumUnit {
    if (_value.selectedCurriculumUnit == null) {
      return null;
    }

    return $CurriculumCopyWith<$Res>(_value.selectedCurriculumUnit!, (value) {
      return _then(_value.copyWith(selectedCurriculumUnit: value));
    });
  }

  @override
  $ResultStateCopyWith<File?, $Res> get getSelectedVideoCacheResult {
    return $ResultStateCopyWith<File?, $Res>(_value.getSelectedVideoCacheResult,
        (value) {
      return _then(_value.copyWith(getSelectedVideoCacheResult: value));
    });
  }
}

/// @nodoc
abstract class _$CourseStateCopyWith<$Res>
    implements $CourseStateCopyWith<$Res> {
  factory _$CourseStateCopyWith(
          _CourseState value, $Res Function(_CourseState) then) =
      __$CourseStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Curriculum? selectedCurriculumUnit,
      ResultState<File?> getSelectedVideoCacheResult,
      List<Curriculum> curriculums});

  @override
  $CurriculumCopyWith<$Res>? get selectedCurriculumUnit;
  @override
  $ResultStateCopyWith<File?, $Res> get getSelectedVideoCacheResult;
}

/// @nodoc
class __$CourseStateCopyWithImpl<$Res> extends _$CourseStateCopyWithImpl<$Res>
    implements _$CourseStateCopyWith<$Res> {
  __$CourseStateCopyWithImpl(
      _CourseState _value, $Res Function(_CourseState) _then)
      : super(_value, (v) => _then(v as _CourseState));

  @override
  _CourseState get _value => super._value as _CourseState;

  @override
  $Res call({
    Object? selectedCurriculumUnit = freezed,
    Object? getSelectedVideoCacheResult = freezed,
    Object? curriculums = freezed,
  }) {
    return _then(_CourseState(
      selectedCurriculumUnit: selectedCurriculumUnit == freezed
          ? _value.selectedCurriculumUnit
          : selectedCurriculumUnit // ignore: cast_nullable_to_non_nullable
              as Curriculum?,
      getSelectedVideoCacheResult: getSelectedVideoCacheResult == freezed
          ? _value.getSelectedVideoCacheResult
          : getSelectedVideoCacheResult // ignore: cast_nullable_to_non_nullable
              as ResultState<File?>,
      curriculums: curriculums == freezed
          ? _value.curriculums
          : curriculums // ignore: cast_nullable_to_non_nullable
              as List<Curriculum>,
    ));
  }
}

/// @nodoc

class _$_CourseState implements _CourseState {
  const _$_CourseState(
      {required this.selectedCurriculumUnit,
      required this.getSelectedVideoCacheResult,
      required this.curriculums});

  @override
  final Curriculum? selectedCurriculumUnit;
  @override
  final ResultState<File?> getSelectedVideoCacheResult;
  @override
  final List<Curriculum> curriculums;

  @override
  String toString() {
    return 'CourseState(selectedCurriculumUnit: $selectedCurriculumUnit, getSelectedVideoCacheResult: $getSelectedVideoCacheResult, curriculums: $curriculums)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CourseState &&
            const DeepCollectionEquality()
                .equals(other.selectedCurriculumUnit, selectedCurriculumUnit) &&
            const DeepCollectionEquality().equals(
                other.getSelectedVideoCacheResult,
                getSelectedVideoCacheResult) &&
            const DeepCollectionEquality()
                .equals(other.curriculums, curriculums));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(selectedCurriculumUnit),
      const DeepCollectionEquality().hash(getSelectedVideoCacheResult),
      const DeepCollectionEquality().hash(curriculums));

  @JsonKey(ignore: true)
  @override
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      __$CourseStateCopyWithImpl<_CourseState>(this, _$identity);
}

abstract class _CourseState implements CourseState {
  const factory _CourseState(
      {required Curriculum? selectedCurriculumUnit,
      required ResultState<File?> getSelectedVideoCacheResult,
      required List<Curriculum> curriculums}) = _$_CourseState;

  @override
  Curriculum? get selectedCurriculumUnit;
  @override
  ResultState<File?> get getSelectedVideoCacheResult;
  @override
  List<Curriculum> get curriculums;
  @override
  @JsonKey(ignore: true)
  _$CourseStateCopyWith<_CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}
