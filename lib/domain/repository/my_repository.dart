import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../core/result/failure.dart';
import '../model/course.dart';

abstract class MyRepository {
  Future<Either<Failure, Course>> fetchCourses();
  Future<Either<Failure, bool>> removeFileCache({required String key});
  Future<Either<Failure, File?>> getFileCache({required String key});
  Future<Either<Failure, File>> downloadFile({required String url});
  // Future<Either<Failure, void>> getFileCache({required String key});
}
