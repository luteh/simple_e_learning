import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/model/course.dart';
import '../../core/widgets/my_error_widget.dart';
import '../course/course_args.dart';
import '../course/course_page.dart';
import 'cubit/home_cubit.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        buildWhen: (previous, current) =>
            previous.fetchCoursesResult != current.fetchCoursesResult,
        builder: (context, state) {
          return state.fetchCoursesResult.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            success: (data) {
              return _buildContent(context, data);
            },
            error: (failure) {
              return MyErrorWidget(
                failure: failure,
                onPressRetry: () {
                  context.read<HomeCubit>().fetchCourses();
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildContent(BuildContext context, Course data) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          CoursePage.routeName,
          arguments: CourseArgs(data),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Courses',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              data.courseName,
              style: Theme.of(context).textTheme.bodyText2,
            ),
            const SizedBox(
              height: 4,
            ),
            LinearProgressIndicator(
              value: double.parse(data.progress) / 100,
              color: Colors.green,
              backgroundColor: Colors.grey[300],
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              '${data.progress}% complete',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
