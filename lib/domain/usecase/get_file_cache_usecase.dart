import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../core/result/failure.dart';
import '../repository/my_repository.dart';
import '../core/usecase/future_usecase.dart';

class GetFileCacheUseCaseParams {
  final String key;

  GetFileCacheUseCaseParams({required this.key});
}

@lazySingleton
class GetFileCacheUseCase
    extends FutureUseCase<File?, GetFileCacheUseCaseParams> {
  final MyRepository myRepository;

  GetFileCacheUseCase({required this.myRepository});

  @override
  Future<Either<Failure, File?>> execute(GetFileCacheUseCaseParams param) {
    return myRepository.getFileCache(key: param.key);
  }
}
