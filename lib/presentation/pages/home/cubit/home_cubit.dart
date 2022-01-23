import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/core/result/result_state.dart';
import '../../../../domain/model/course.dart';
import '../../../../domain/usecase/fetch_courses_usecase.dart';
import '../../../../domain/core/usecase/no_param.dart';

part 'home_cubit.freezed.dart';
part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  final FetchCoursesUseCase _fetchCoursesUseCase;

  HomeCubit(this._fetchCoursesUseCase) : super(HomeState.initial());

  onStart() {
    fetchCourses();
  }

  fetchCourses() async {
    emit(state.copyWith(fetchCoursesResult: const ResultState.loading()));

    final _result = await _fetchCoursesUseCase(const NoParam());

    _result.fold(
      (l) => emit(
          state.copyWith(fetchCoursesResult: ResultState.error(failure: l))),
      (r) => emit(
          state.copyWith(fetchCoursesResult: ResultState.success(data: r))),
    );
  }
}
