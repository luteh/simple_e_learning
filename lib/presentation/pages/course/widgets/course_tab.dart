import 'package:flutter/material.dart';

class CourseTab extends StatelessWidget {
  const CourseTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TabBar(  
      labelColor: Colors.black,
      tabs: [
        Tab(
          text: 'Kurikulum',
        ),
        Tab(
          text: 'Ikhtisar',
        ),
        Tab(
          text: 'Lampiran',
        ),
      ],
    );
  }
}
