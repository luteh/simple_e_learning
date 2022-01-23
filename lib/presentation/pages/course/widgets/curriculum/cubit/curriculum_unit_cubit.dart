import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../../domain/core/result/result_state.dart';
import '../../../../../../domain/usecase/download_file_usecase.dart';
import '../../../../../../domain/usecase/get_file_cache_usecase.dart';
import '../../../../../../domain/usecase/remove_file_cache_usecase.dart';

part 'curriculum_unit_cubit.freezed.dart';
part 'curriculum_unit_state.dart';

@injectable
class CurriculumUnitCubit extends Cubit<CurriculumUnitState> {
  final DownloadFileUseCase _downloadFileUseCase;
  final GetFileCacheUseCase _getFileCacheUseCase;
  final RemoveFileCacheUseCase _removeFileCacheUseCase;

  CurriculumUnitCubit(this._downloadFileUseCase, this._getFileCacheUseCase,
      this._removeFileCacheUseCase)
      : super(CurriculumUnitState.initial());

  downloadFile({required String url}) async {
    emit(state.copyWith(downloadFileResult: const ResultState.loading()));

    final _result =
        await _downloadFileUseCase(DownloadFileUseCaseParams(url: url));

    _result.fold(
      (l) => emit(
          state.copyWith(downloadFileResult: ResultState.error(failure: l))),
      (r) => emit(
          state.copyWith(downloadFileResult: ResultState.success(data: r))),
    );
  }

  getFileCache({required String key}) async {
    emit(state.copyWith(getFileCacheResult: const ResultState.loading()));

    final _result =
        await _getFileCacheUseCase(GetFileCacheUseCaseParams(key: key));

    _result.fold(
      (l) {
        emit(state.copyWith(getFileCacheResult: ResultState.error(failure: l)));
      },
      (r) {
        emit(state.copyWith(getFileCacheResult: ResultState.success(data: r)));
      },
    );
  }

  removeFileCache({required String key}) async {
    emit(state.copyWith(removeFileCacheResult: const ResultState.loading()));

    final _result =
        await _removeFileCacheUseCase(RemoveFileCacheUseCaseParams(key: key));

    _result.fold(
      (l) => emit(
          state.copyWith(removeFileCacheResult: ResultState.error(failure: l))),
      (r) => emit(state.copyWith(
          removeFileCacheResult: const ResultState.success(data: true))),
    );
  }
}
