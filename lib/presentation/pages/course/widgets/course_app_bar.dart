import 'package:flutter/material.dart';

import '../../../../domain/model/course.dart';

class CourseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Course course;
  const CourseAppBar({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        course.courseName,
        overflow: TextOverflow.ellipsis,
      ),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: int.parse(course.progress) / 100,
                  color: Colors.green,
                  backgroundColor: Colors.grey[300],
                ),
                Text(
                  '${course.progress}%',
                  style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
