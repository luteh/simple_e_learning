import 'package:flutter/material.dart';

import '../../../../domain/model/course.dart';
import 'attachment/attachment_view.dart';
import 'curriculum/curriculum_view.dart';
import 'overview/overview_view.dart';

class CourseTabView extends StatelessWidget {
  final List<Curriculum> curriculums;
  const CourseTabView({Key? key, required this.curriculums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        CurriculumView(
          curriculums: curriculums,
        ),
        const OverviewView(),
        const AttachmentView(),
      ],
    );
  }
}
