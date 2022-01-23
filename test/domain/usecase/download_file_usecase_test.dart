import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/domain/core/result/failure.dart';
import 'package:simple_e_learning/domain/repository/my_repository.dart';
import 'package:simple_e_learning/domain/usecase/download_file_usecase.dart';

import 'download_file_usecase_test.mocks.dart';

@GenerateMocks([MyRepository, File])
void main() {
  final _mockRepository = MockMyRepository();
  final _usecase = DownloadFileUseCase(myRepository: _mockRepository);

  test(
    "download file success return [File]",
    () async {
      final _file = MockFile();
      
      when(_mockRepository.downloadFile(url: anyNamed('url')))
          .thenAnswer((_) async => Right(_file));

      final result = await _usecase(DownloadFileUseCaseParams(url: 'url'));

      verify(_mockRepository.downloadFile(url: anyNamed('url'))).called(1);
      expect(result.isRight(), true);
      expect(result.getRight().toNullable(), _file);
    },
  );

  test(
    "download file failure return [Failure]",
    () async {
      const _failure = Failure.unexpectedError();

      when(_mockRepository.downloadFile(url: anyNamed('url')))
          .thenAnswer((_) async => const Left(_failure));

      final result = await _usecase(DownloadFileUseCaseParams(url: 'url'));

      verify(_mockRepository.downloadFile(url: anyNamed('url'))).called(1);
      expect(result.isLeft(), true);
      expect(result.getLeft().toNullable(), _failure);
    },
  );
}
