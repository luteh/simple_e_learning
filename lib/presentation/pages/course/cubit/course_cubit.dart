import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/result/result_state.dart';
import '../../../../domain/model/course.dart';
import '../../../../domain/usecase/get_file_cache_usecase.dart';

part 'course_cubit.freezed.dart';
part 'course_state.dart';

@injectable
class CourseCubit extends Cubit<CourseState> {
  final GetFileCacheUseCase _getFileCacheUseCase;
  CourseCubit(this._getFileCacheUseCase) : super(CourseState.initial());

  onStart({required List<Curriculum> curriculums}) {
    saveCurriculums(curriculums);
    selectCurriculumUnit(
        curriculums.firstWhereOrNull((element) => element.type == 'unit'));
  }

  saveCurriculums(List<Curriculum> curriculums) {
    emit(state.copyWith(curriculums: curriculums));
  }

  selectCurriculumUnit(Curriculum? curriculum) {
    emit(state.copyWith(selectedCurriculumUnit: curriculum));
    getSelectedVideoCache();
  }

  toNextCurriculumUnit() {
    if (state.selectedCurriculumUnit == null) return;

    final _currentIndex =
        state.curriculums.indexOf(state.selectedCurriculumUnit!);

    final _nextCurriculumnUnit = state.curriculums[_currentIndex + 1];
    if (_nextCurriculumnUnit.type == 'section') {
      selectCurriculumUnit(state.curriculums[_currentIndex + 2]);
      return;
    }
    selectCurriculumUnit(_nextCurriculumnUnit);
  }

  toPreviousCurriculumUnit() {
    if (state.selectedCurriculumUnit == null) return;

    final _currentIndex =
        state.curriculums.indexOf(state.selectedCurriculumUnit!);

    if (_currentIndex == 0) return;

    final _previousCurriculumnUnit = state.curriculums[_currentIndex - 1];
    if (_previousCurriculumnUnit.type == 'section') {
      selectCurriculumUnit(state.curriculums[_currentIndex - 2]);
      return;
    }
    selectCurriculumUnit(_previousCurriculumnUnit);
  }

  getSelectedVideoCache() async {
    emit(state.copyWith(getSelectedVideoCacheResult: const ResultState.loading()));

    final _result = await _getFileCacheUseCase(GetFileCacheUseCaseParams(
        key: state.selectedCurriculumUnit?.offlineVideoLink ?? ''));

    _result.fold(
      (l) {
        emit(state.copyWith(getSelectedVideoCacheResult: ResultState.error(failure: l)));
      },
      (r) {
        emit(state.copyWith(getSelectedVideoCacheResult: ResultState.success(data: r)));
      },
    );
  }
}
