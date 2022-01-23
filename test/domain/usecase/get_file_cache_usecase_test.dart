import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/repository/my_repository.dart';
import 'package:simple_e_learning/domain/usecase/get_file_cache_usecase.dart';

import 'get_file_cache_usecase_test.mocks.dart';

@GenerateMocks([MyRepository, File])
void main() {
  final _mockRepository = MockMyRepository();
  final _usecase = GetFileCacheUseCase(myRepository: _mockRepository);

  test(
    "get file cache success return [File]",
    () async {
      final _data = MockFile();

      when(_mockRepository.getFileCache(key: anyNamed('key')))
          .thenAnswer((_) async => Right(_data));

      final result = await _usecase(GetFileCacheUseCaseParams(key: 'key'));

      verify(_mockRepository.getFileCache(key: 'key')).called(1);
      expect(result.isRight(), true);
      expect(result.getRight().toNullable(), _data);
    },
  );

  test(
    "get file cache failure return [Failure]",
    () async {
      const _failure = Failure.unexpectedError();

      when(_mockRepository.getFileCache(key: anyNamed('key')))
          .thenAnswer((_) async => const Left(_failure));

      final result = await _usecase(GetFileCacheUseCaseParams(key: 'key'));

      verify(_mockRepository.getFileCache(key: 'key')).called(1);
      expect(result.isLeft(), true);
      expect(result.getLeft().toNullable(), _failure);
    },
  );
}
