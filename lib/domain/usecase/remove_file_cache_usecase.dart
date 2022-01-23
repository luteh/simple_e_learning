import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../core/result/failure.dart';
import '../repository/my_repository.dart';
import '../core/usecase/future_usecase.dart';

class RemoveFileCacheUseCaseParams {
  final String key;

  RemoveFileCacheUseCaseParams({required this.key});
}

@lazySingleton
class RemoveFileCacheUseCase
    extends FutureUseCase<bool, RemoveFileCacheUseCaseParams> {
  final MyRepository myRepository;

  RemoveFileCacheUseCase({required this.myRepository});

  @override
  Future<Either<Failure, bool>> execute(RemoveFileCacheUseCaseParams param) {
    return myRepository.removeFileCache(key: param.key);
  }
}
