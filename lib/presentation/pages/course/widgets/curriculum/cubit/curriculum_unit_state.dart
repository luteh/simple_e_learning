part of 'curriculum_unit_cubit.dart';

@freezed
class CurriculumUnitState with _$CurriculumUnitState {
  const factory CurriculumUnitState({
    required ResultState<File> downloadFileResult,
    required ResultState<File?> getFileCacheResult,
    required ResultState<bool> removeFileCacheResult,
  }) = _CurriculumUnitState;

  factory CurriculumUnitState.initial() => const CurriculumUnitState(
        downloadFileResult: ResultState.initial(),
        getFileCacheResult: ResultState.initial(),
        removeFileCacheResult: ResultState.initial(),
      );
}
