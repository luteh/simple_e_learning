import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

import '../core/result/failure.dart';
import '../model/course.dart';
import '../repository/my_repository.dart';
import '../core/usecase/future_usecase.dart';
import '../core/usecase/no_param.dart';

@lazySingleton
class FetchCoursesUseCase extends FutureUseCase<Course, NoParam> {
  final MyRepository myRepository;

  FetchCoursesUseCase({required this.myRepository});

  @override
  Future<Either<Failure, Course>> execute(NoParam param) {
    return myRepository.fetchCourses();
  }
}
