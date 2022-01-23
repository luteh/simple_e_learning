import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/core/result/result_state.dart';
import 'package:simple_e_learning/domain/model/course.dart';
import 'package:simple_e_learning/domain/usecase/fetch_courses_usecase.dart';
import 'package:simple_e_learning/presentation/pages/home/cubit/home_cubit.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([
  FetchCoursesUseCase,
  Course,
])
void main() {
  final _fetchCourseUseCase = MockFetchCoursesUseCase();

  late Course _course;

  setUp(() {
    _course = MockCourse();
  });

  group(
    "fetch courses",
    () {
      blocTest<HomeCubit, HomeState>(
        'emits [loading, success]',
        build: () => HomeCubit(_fetchCourseUseCase),
        act: (cubit) {
          when(_fetchCourseUseCase(any))
              .thenAnswer((_) async => Right(_course));

          cubit.fetchCourses();
        },
        expect: () => [
          HomeState.initial()
              .copyWith(fetchCoursesResult: const ResultState.loading()),
          HomeState.initial()
              .copyWith(fetchCoursesResult: ResultState.success(data: _course)),
        ],
      );

      blocTest<HomeCubit, HomeState>(
        'emits [loading, error]',
        build: () => HomeCubit(_fetchCourseUseCase),
        act: (cubit) {
          when(_fetchCourseUseCase(any))
              .thenAnswer((_) async => const Left(Failure.unexpectedError()));
          cubit.fetchCourses();
        },
        expect: () => [
          HomeState.initial()
              .copyWith(fetchCoursesResult: const ResultState.loading()),
          HomeState.initial().copyWith(
              fetchCoursesResult:
                  const ResultState.error(failure: Failure.unexpectedError())),
        ],
      );
    },
  );
}
