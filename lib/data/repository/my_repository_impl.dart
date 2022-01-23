import 'dart:io';

import 'package:fpdart/src/either.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/result/failure.dart';
import '../../domain/model/course.dart';
import '../../domain/repository/my_repository.dart';
import '../local/local_data_source.dart';
import '../remote/remote_data_source.dart';

@LazySingleton(as: MyRepository)
class MyRepositoryImpl implements MyRepository {
  final RemoteDataSource _remoteDataSource;
  final LocalDataSource _localDataSource;

    MyRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<Either<Failure, Course>> fetchCourses() async {
    final _data = await _remoteDataSource.fetchCourses();
    return right(_data.toDomain());
  }

  @override
  Future<Either<Failure, File>> downloadFile({required String url}) async {
    final _data = await _remoteDataSource.downloadFile(url: url);
    return right(_data.file);
  }

  @override
  Future<Either<Failure, File?>> getFileCache({required String key}) async {
    final _data = await _localDataSource.getFileCache(key: key);
    return right(_data?.file);
  }

  @override
  Future<Either<Failure, bool>> removeFileCache({required String key}) async {
    await _localDataSource.removeFileCache(key: key);
    return right(true);
  }
}
