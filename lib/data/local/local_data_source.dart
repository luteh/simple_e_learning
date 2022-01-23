import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class LocalDataSource {
  final DefaultCacheManager _cacheManager;

  LocalDataSource(this._cacheManager);

  Future<FileInfo?> getFileCache({required String key}) async {
    final _fileInfo = await _cacheManager.getFileFromCache(key);
    return _fileInfo;
  }

  Future<void> removeFileCache({required String key}) async {
    return await _cacheManager.removeFile(key);
  }
}
