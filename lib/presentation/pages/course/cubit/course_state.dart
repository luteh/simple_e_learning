part of 'course_cubit.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState({
    required Curriculum? selectedCurriculumUnit,
    required ResultState<File?> getSelectedVideoCacheResult,
    required List<Curriculum> curriculums,
  }) = _CourseState;

  factory CourseState.initial() => const CourseState(
        selectedCurriculumUnit: null,
        getSelectedVideoCacheResult: ResultState.initial(),
        curriculums: [],
      );
}
