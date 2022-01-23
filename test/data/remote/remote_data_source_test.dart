import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/data/remote/api_service/my_api_service.dart';
import 'package:simple_e_learning/data/remote/remote_data_source.dart';

import '../fake_data_factory.dart';
import 'remote_data_source_test.mocks.dart';

@GenerateMocks([
  MyApiService,
  Response,
  DefaultCacheManager,
  FileInfo,
])
void main() {
  final _apiService = MockMyApiService();
  final _cacheManager = MockDefaultCacheManager();
  final _remoteDataSource = RemoteDataSource(_apiService, _cacheManager);
  late MockResponse _response;

  setUp(() {
    _response = MockResponse();
  });
  group(
    "fetch courses",
    () {
      test(
        "success return CourseResponse",
        () async {
          when(_apiService.fetchCourses())
              .thenAnswer((realInvocation) async => _response);
          when(_response.data).thenReturn(FakeDataFactory.courseResponseJson);

          final _result = await _remoteDataSource.fetchCourses();

          verify(_apiService.fetchCourses()).called(1);
          expect(_result, FakeDataFactory.courseResponse);
        },
      );
    },
  );

  group(
    "download file",
    () {
      test(
        "success return FileInfo",
        () async {
          final _fileInfo = MockFileInfo();
          when(_cacheManager.downloadFile(any))
              .thenAnswer((realInvocation) async => _fileInfo);

          final _result = await _cacheManager.downloadFile('url');

          verify(_cacheManager.downloadFile(any)).called(1);
          expect(_result, _fileInfo);
        },
      );
    },
  );
}
