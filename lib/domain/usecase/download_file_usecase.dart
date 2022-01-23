import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../core/result/failure.dart';
import '../repository/my_repository.dart';
import '../core/usecase/future_usecase.dart';

class DownloadFileUseCaseParams {
  final String url;

  DownloadFileUseCaseParams({required this.url});
}

@lazySingleton
class DownloadFileUseCase
    extends FutureUseCase<File, DownloadFileUseCaseParams> {
  final MyRepository myRepository;

  DownloadFileUseCase({required this.myRepository});

  @override
  Future<Either<Failure, File>> execute(DownloadFileUseCaseParams param) {
    return myRepository.downloadFile(url: param.url);
  }
}
