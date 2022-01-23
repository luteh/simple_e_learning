import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/core/result/result_state.dart';
import 'package:simple_e_learning/domain/model/course.dart';
import 'package:simple_e_learning/domain/usecase/download_file_usecase.dart';
import 'package:simple_e_learning/domain/usecase/fetch_courses_usecase.dart';
import 'package:simple_e_learning/domain/usecase/get_file_cache_usecase.dart';
import 'package:simple_e_learning/domain/usecase/remove_file_cache_usecase.dart';
import 'package:simple_e_learning/presentation/pages/course/cubit/course_cubit.dart';
import 'package:simple_e_learning/presentation/pages/course/widgets/curriculum/cubit/curriculum_unit_cubit.dart';
import 'package:simple_e_learning/presentation/pages/home/cubit/home_cubit.dart';

import 'curriculum_unit_cubit_test.mocks.dart';

@GenerateMocks([
  DownloadFileUseCase,
  GetFileCacheUseCase,
  RemoveFileCacheUseCase,
  File,
])
void main() {
  final _downloadFileUseCase = MockDownloadFileUseCase();
  final _getFileCacheUseCase = MockGetFileCacheUseCase();
  final _removeFileCacheUseCase = MockRemoveFileCacheUseCase();

  late File _file;

  setUp(() {
    _file = MockFile();
  });

  group(
    "download file",
    () {
      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, success]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_downloadFileUseCase(any)).thenAnswer((_) async => Right(_file));

          cubit.downloadFile(url: 'url');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(downloadFileResult: const ResultState.loading()),
          CurriculumUnitState.initial()
              .copyWith(downloadFileResult: ResultState.success(data: _file)),
        ],
      );

      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, error]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_downloadFileUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));
          cubit.downloadFile(url: 'url');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(downloadFileResult: const ResultState.loading()),
          CurriculumUnitState.initial().copyWith(
              downloadFileResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
  group(
    "get file cache",
    () {
      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, success with File]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any)).thenAnswer((_) async => Right(_file));

          cubit.getFileCache(key: 'key');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(getFileCacheResult: const ResultState.loading()),
          CurriculumUnitState.initial()
              .copyWith(getFileCacheResult: ResultState.success(data: _file)),
        ],
      );
      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, success with null data]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any))
              .thenAnswer((_) async => const Right(null));

          cubit.getFileCache(key: 'key');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(getFileCacheResult: const ResultState.loading()),
          CurriculumUnitState.initial().copyWith(
              getFileCacheResult: const ResultState.success(data: null)),
        ],
      );

      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, error]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));
          cubit.getFileCache(key: 'key');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(getFileCacheResult: const ResultState.loading()),
          CurriculumUnitState.initial().copyWith(
              getFileCacheResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
  group(
    "remove file cache",
    () {
      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, success]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_removeFileCacheUseCase(any))
              .thenAnswer((_) async => const Right(true));

          cubit.removeFileCache(key: 'key');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(removeFileCacheResult: const ResultState.loading()),
          CurriculumUnitState.initial().copyWith(
              removeFileCacheResult: const ResultState.success(data: true)),
        ],
      );

      blocTest<CurriculumUnitCubit, CurriculumUnitState>(
        'emits [loading, error]',
        build: () => CurriculumUnitCubit(_downloadFileUseCase,
            _getFileCacheUseCase, _removeFileCacheUseCase),
        act: (cubit) {
          when(_removeFileCacheUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));
          cubit.removeFileCache(key: 'key');
        },
        expect: () => [
          CurriculumUnitState.initial()
              .copyWith(removeFileCacheResult: const ResultState.loading()),
          CurriculumUnitState.initial().copyWith(
              removeFileCacheResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
}
