import 'dart:developer';

import 'package:fpdart/fpdart.dart';

import '../result/failure.dart';

abstract class FutureUseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params param) async {
    try {
      return await execute(param);
    } catch (e) {
      if (e is TypeError) {
        log(
          e.toString(),
          stackTrace: e.stackTrace,
        );
      } else if (e is NoSuchMethodError) {
        log(e.toString(), stackTrace: e.stackTrace);
      } else {
        log(e.toString());
      }
      return Left(Failure.getException(e));
    }
  }

  Future<Either<Failure, Type>> execute(Params param);
}
