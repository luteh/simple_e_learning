import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MyApiService {
  final Dio _dio;

  MyApiService(this._dio);

  Future<Response> fetchCourses() async {
    return await _dio.get('/course-status.json');
  }
}
