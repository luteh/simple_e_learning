import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/core/usecase/no_param.dart';
import 'package:simple_e_learning/domain/model/course.dart';
import 'package:simple_e_learning/domain/repository/my_repository.dart';
import 'package:simple_e_learning/domain/usecase/download_file_usecase.dart';
import 'package:simple_e_learning/domain/usecase/fetch_courses_usecase.dart';

import 'fetch_courses_usecase_test.mocks.dart';

@GenerateMocks([MyRepository, Course])
void main() {
  final _mockRepository = MockMyRepository();
  final _usecase = FetchCoursesUseCase(myRepository: _mockRepository);

  test(
    "fetch courses success return [Course]",
    () async {
      final _course = MockCourse();

      when(_mockRepository.fetchCourses())
          .thenAnswer((_) async => Right(_course));

      final result = await _usecase(const NoParam());

      verify(_mockRepository.fetchCourses()).called(1);
      expect(result.isRight(), true);
      expect(result.getRight().toNullable(), _course);
    },
  );

  test(
    "fetch courses failure return [Failure]",
    () async {
      const _failure = Failure.unexpectedError();

      when(_mockRepository.fetchCourses())
          .thenAnswer((_) async => const Left(_failure));

      final result = await _usecase(const NoParam());

      verify(_mockRepository.fetchCourses()).called(1);
      expect(result.isLeft(), true);
      expect(result.getLeft().toNullable(), _failure);
    },
  );
}
