import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:simple_e_learning/data/local/local_data_source.dart';
import 'package:simple_e_learning/data/remote/api_service/my_api_service.dart';
import 'package:simple_e_learning/data/remote/remote_data_source.dart';

import '../fake_data_factory.dart';
import 'local_data_source_test.mocks.dart';

@GenerateMocks([
  DefaultCacheManager,
  FileInfo,
])
void main() {
  final _cacheManager = MockDefaultCacheManager();
  final _localDataSource = LocalDataSource(_cacheManager);
  group(
    "get file cache",
    () {
      test(
        "success return FileInfo",
        () async {
          final _fileInfo = MockFileInfo();

          when(_localDataSource.getFileCache(key: 'key'))
              .thenAnswer((realInvocation) async => _fileInfo);

          final _result = await _localDataSource.getFileCache(key: 'key');

          verify(_cacheManager.getFileFromCache(any)).called(1);
          expect(_result, _fileInfo);
        },
      );
      test(
        "success return null",
        () async {
          when(_localDataSource.getFileCache(key: 'key'))
              .thenAnswer((realInvocation) async => null);

          final _result = await _localDataSource.getFileCache(key: 'key');

          verify(_cacheManager.getFileFromCache(any)).called(1);
          expect(_result, null);
        },
      );
    },
  );
}
