import 'package:dio/dio.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  // You can register named preemptive types like follows
  @Named("baseUrl")
  String get baseUrl => 'https://engineer-test-eight.vercel.app';

  // url here will be injected
  @lazySingleton
  Dio dio(@Named('baseUrl') String url) {
    final _dio = Dio(BaseOptions(
      baseUrl: url,
      connectTimeout: 120000,
      receiveTimeout: 120000,
      sendTimeout: 120000,
    ))
      ..interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true),
      );
    return _dio;
  }

  @lazySingleton
  DefaultCacheManager defaultCacheManager() => DefaultCacheManager();
}
