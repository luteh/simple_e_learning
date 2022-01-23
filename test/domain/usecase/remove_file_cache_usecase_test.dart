import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/repository/my_repository.dart';
import 'package:simple_e_learning/domain/usecase/get_file_cache_usecase.dart';
import 'package:simple_e_learning/domain/usecase/remove_file_cache_usecase.dart';

import 'remove_file_cache_usecase_test.mocks.dart';

@GenerateMocks([MyRepository])
void main() {
  final _mockRepository = MockMyRepository();
  final _usecase = RemoveFileCacheUseCase(myRepository: _mockRepository);

  test(
    "remove file cache success",
    () async {
      when(_mockRepository.removeFileCache(key: anyNamed('key')))
          .thenAnswer((_) async => const Right(true));

      final result = await _usecase(RemoveFileCacheUseCaseParams(key: 'key'));

      verify(_mockRepository.removeFileCache(key: 'key')).called(1);
      expect(result.isRight(), true);
      expect(result.getRight().toNullable(), true);
    },
  );

  test(
    "remove file cache failure return [Failure]",
    () async {
      const _failure = Failure.unexpectedError();

      when(_mockRepository.removeFileCache(key: anyNamed('key')))
          .thenAnswer((_) async => const Left(_failure));

      final result = await _usecase(RemoveFileCacheUseCaseParams(key: 'key'));

      verify(_mockRepository.removeFileCache(key: 'key')).called(1);
      expect(result.isLeft(), true);
      expect(result.getLeft().toNullable(), _failure);
    },
  );
}
