import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../di/injection_container.dart';
import '../pages/course/course_args.dart';
import '../pages/course/course_page.dart';
import '../pages/course/cubit/course_cubit.dart';
import '../pages/home/cubit/home_cubit.dart';
import '../pages/home/home_page.dart';

class MyRouter {
  const MyRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomePage.routeName:
        return MaterialPageRoute(
          builder: (context) {
            return BlocProvider(
              create: (context) => getIt.get<HomeCubit>()..onStart(),
              child: const HomePage(),
            );
          },
        );
      case CoursePage.routeName:
        return MaterialPageRoute(
          builder: (context) {
            final _args = settings.arguments as CourseArgs;
            return BlocProvider(
              create: (context) => getIt.get<CourseCubit>()
                ..onStart(
                  curriculums: _args.course.curriculum,
                ),
              child: CoursePage(
                args: _args,
              ),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const Scaffold(
              body: Center(
                child: Text('Unknown Route'),
              ),
            );
          },
        );
    }
  }
}
