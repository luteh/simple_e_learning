import 'package:flutter_cache_manager/file.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/data/local/local_data_source.dart';
import 'package:simple_e_learning/data/remote/model/course_response.dart';
import 'package:simple_e_learning/data/remote/remote_data_source.dart';
import 'package:simple_e_learning/data/repository/my_repository_impl.dart';
import 'package:simple_e_learning/domain/model/course.dart';

import 'my_repository_impl_test.mocks.dart';

@GenerateMocks([
  RemoteDataSource,
  LocalDataSource,
  CourseResponse,
  FileInfo,
  File,
  Course,
])
void main() {
  final _remoteDataSource = MockRemoteDataSource();
  final _localDataSource = MockLocalDataSource();
  final _repository = MyRepositoryImpl(_remoteDataSource, _localDataSource);

  group(
    "fetch courses",
    () {
      test(
        "success return Right Course",
        () async {
          final _response = MockCourseResponse();
          final _course = MockCourse();

          when(_remoteDataSource.fetchCourses())
              .thenAnswer((_) async => _response);
          when(_response.toDomain()).thenReturn(_course);

          final result = await _repository.fetchCourses();

          verify(_remoteDataSource.fetchCourses()).called(1);
          verify(_response.toDomain()).called(1);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), _course);
        },
      );
    },
  );
  group(
    "download file",
    () {
      test(
        "success return Right File",
        () async {
          final _fileInfo = MockFileInfo();
          final _file = MockFile();

          when(_remoteDataSource.downloadFile(url: anyNamed('url')))
              .thenAnswer((_) async => _fileInfo);
          when(_fileInfo.file).thenReturn(_file);

          final result = await _repository.downloadFile(url: 'url');

          verify(_remoteDataSource.downloadFile(url: anyNamed('url')))
              .called(1);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), _file);
        },
      );
    },
  );

  group(
    "get file cache",
    () {
      test(
        "success return Right File",
        () async {
          final _fileInfo = MockFileInfo();
          final _file = MockFile();

          when(_localDataSource.getFileCache(key: anyNamed('key')))
              .thenAnswer((_) async => _fileInfo);
          when(_fileInfo.file).thenReturn(_file);

          final result = await _repository.getFileCache(key: 'key');

          verify(_localDataSource.getFileCache(key: anyNamed('key'))).called(1);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), _file);
        },
      );
      test(
        "success return Right null",
        () async {
          when(_localDataSource.getFileCache(key: anyNamed('key')))
              .thenAnswer((_) async => null);

          final result = await _repository.getFileCache(key: 'key');

          verify(_localDataSource.getFileCache(key: anyNamed('key'))).called(1);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), null);
        },
      );
    },
  );
  group(
    "remove file cache",
    () {
      test(
        "success return Right true",
        () async {
          when(_localDataSource.removeFileCache(key: anyNamed('key')))
              .thenAnswer((_) async => {});

          final result = await _repository.removeFileCache(key: 'key');

          verify(_localDataSource.removeFileCache(key: anyNamed('key')))
              .called(1);
          expect(result.isRight(), true);
          expect(result.getRight().toNullable(), true);
        },
      );
    },
  );
}
