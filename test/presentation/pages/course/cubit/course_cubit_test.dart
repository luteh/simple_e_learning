import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/core/result/result_state.dart';
import 'package:simple_e_learning/domain/model/course.dart';
import 'package:simple_e_learning/domain/usecase/fetch_courses_usecase.dart';
import 'package:simple_e_learning/domain/usecase/get_file_cache_usecase.dart';
import 'package:simple_e_learning/presentation/pages/course/cubit/course_cubit.dart';
import 'package:simple_e_learning/presentation/pages/home/cubit/home_cubit.dart';

import 'course_cubit_test.mocks.dart';

@GenerateMocks([
  GetFileCacheUseCase,
  File,
])
void main() {
  final _getFileCacheUseCase = MockGetFileCacheUseCase();

  late File _file;

  setUp(() {
    _file = MockFile();
  });

  group(
    "get selected video cache",
    () {
      blocTest<CourseCubit, CourseState>(
        'emits [loading, success with File]',
        build: () => CourseCubit(_getFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any)).thenAnswer((_) async => Right(_file));

          cubit.getSelectedVideoCache();
        },
        expect: () => [
          CourseState.initial()
              .copyWith(getSelectedVideoCacheResult: const ResultState.loading()),
          CourseState.initial()
              .copyWith(getSelectedVideoCacheResult: ResultState.success(data: _file)),
        ],
      );
      blocTest<CourseCubit, CourseState>(
        'emits [loading, success with null data]',
        build: () => CourseCubit(_getFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any))
              .thenAnswer((_) async => const Right(null));

          cubit.getSelectedVideoCache();
        },
        expect: () => [
          CourseState.initial()
              .copyWith(getSelectedVideoCacheResult: const ResultState.loading()),
          CourseState.initial().copyWith(
              getSelectedVideoCacheResult: const ResultState.success(data: null)),
        ],
      );

      blocTest<CourseCubit, CourseState>(
        'emits [loading, error]',
        build: () => CourseCubit(_getFileCacheUseCase),
        act: (cubit) {
          when(_getFileCacheUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));
          cubit.getSelectedVideoCache();
        },
        expect: () => [
          CourseState.initial()
              .copyWith(getSelectedVideoCacheResult: const ResultState.loading()),
          CourseState.initial().copyWith(
              getSelectedVideoCacheResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
}
