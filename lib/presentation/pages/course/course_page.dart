import 'package:flutter/material.dart';

import 'course_args.dart';
import 'widgets/course_app_bar.dart';
import 'widgets/course_tab.dart';
import 'widgets/course_tab_view.dart';
import 'widgets/video/course_video.dart';
import 'widgets/footer.dart';

/// Must pass argument as [CourseArgs]
class CoursePage extends StatelessWidget {
  static const routeName = '/course';

  final CourseArgs args;
  const CoursePage({Key? key, required this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CourseAppBar(
        course: args.course,
      ),
      body: Column(
        children: [
          const CourseVideo(),
          Expanded(
            child: DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  const CourseTab(),
                  Expanded(
                    child: CourseTabView(
                      curriculums: args.course.curriculum,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
