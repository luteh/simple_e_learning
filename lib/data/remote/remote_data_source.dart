import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

import 'api_service/my_api_service.dart';
import 'model/course_response.dart';

@lazySingleton
class RemoteDataSource {
  final MyApiService _apiService;
  final DefaultCacheManager _cacheManager;

  RemoteDataSource(this._apiService, this._cacheManager);

  Future<CourseResponse> fetchCourses() async {
    final _response = await _apiService.fetchCourses();
    return CourseResponse.fromJson(_response.data);
  }

  Future<FileInfo> downloadFile({required String url}) async {
    return await _cacheManager.downloadFile(url);
  }
}
