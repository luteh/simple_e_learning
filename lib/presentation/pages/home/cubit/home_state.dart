part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required ResultState<Course> fetchCoursesResult,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        fetchCoursesResult: ResultState.initial(),
      );
}
