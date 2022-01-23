// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:flutter_cache_manager/flutter_cache_manager.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/local/local_data_source.dart' as _i4;
import '../data/remote/api_service/my_api_service.dart' as _i6;
import '../data/remote/remote_data_source.dart' as _i7;
import '../data/repository/my_repository_impl.dart' as _i9;
import '../domain/repository/my_repository.dart' as _i8;
import '../domain/usecase/download_file_usecase.dart' as _i11;
import '../domain/usecase/fetch_courses_usecase.dart' as _i12;
import '../domain/usecase/get_file_cache_usecase.dart' as _i13;
import '../domain/usecase/remove_file_cache_usecase.dart' as _i10;
import '../presentation/pages/course/cubit/course_cubit.dart' as _i15;
import '../presentation/pages/course/widgets/curriculum/cubit/curriculum_unit_cubit.dart'
    as _i16;
import '../presentation/pages/home/cubit/home_cubit.dart' as _i14;
import 'register_module.dart' as _i17; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.DefaultCacheManager>(
      () => registerModule.defaultCacheManager());
  gh.lazySingleton<_i4.LocalDataSource>(
      () => _i4.LocalDataSource(get<_i3.DefaultCacheManager>()));
  gh.factory<String>(() => registerModule.baseUrl, instanceName: 'baseUrl');
  gh.lazySingleton<_i5.Dio>(
      () => registerModule.dio(get<String>(instanceName: 'baseUrl')));
  gh.lazySingleton<_i6.MyApiService>(() => _i6.MyApiService(get<_i5.Dio>()));
  gh.lazySingleton<_i7.RemoteDataSource>(() => _i7.RemoteDataSource(
      get<_i6.MyApiService>(), get<_i3.DefaultCacheManager>()));
  gh.lazySingleton<_i8.MyRepository>(() => _i9.MyRepositoryImpl(
      get<_i7.RemoteDataSource>(), get<_i4.LocalDataSource>()));
  gh.lazySingleton<_i10.RemoveFileCacheUseCase>(
      () => _i10.RemoveFileCacheUseCase(myRepository: get<_i8.MyRepository>()));
  gh.lazySingleton<_i11.DownloadFileUseCase>(
      () => _i11.DownloadFileUseCase(myRepository: get<_i8.MyRepository>()));
  gh.lazySingleton<_i12.FetchCoursesUseCase>(
      () => _i12.FetchCoursesUseCase(myRepository: get<_i8.MyRepository>()));
  gh.lazySingleton<_i13.GetFileCacheUseCase>(
      () => _i13.GetFileCacheUseCase(myRepository: get<_i8.MyRepository>()));
  gh.factory<_i14.HomeCubit>(
      () => _i14.HomeCubit(get<_i12.FetchCoursesUseCase>()));
  gh.factory<_i15.CourseCubit>(
      () => _i15.CourseCubit(get<_i13.GetFileCacheUseCase>()));
  gh.factory<_i16.CurriculumUnitCubit>(() => _i16.CurriculumUnitCubit(
      get<_i11.DownloadFileUseCase>(),
      get<_i13.GetFileCacheUseCase>(),
      get<_i10.RemoveFileCacheUseCase>()));
  return get;
}

class _$RegisterModule extends _i17.RegisterModule {}
