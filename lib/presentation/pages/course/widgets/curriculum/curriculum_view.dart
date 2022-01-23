import 'package:flutter/material.dart';

import '../../../../../domain/model/course.dart';
import '../footer.dart';
import 'item_section.dart';
import 'item_unit.dart';

class CurriculumView extends StatelessWidget {
  final List<Curriculum> curriculums;
  const CurriculumView({Key? key, required this.curriculums}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              final _curriculum = curriculums[index];

              if (_curriculum.type == 'section') {
                return ItemSection(
                  curriculum: _curriculum,
                );
              }

              return ItemUnit(
                curriculum: _curriculum,
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 1,
              );
            },
            itemCount: curriculums.length,
          ),
        ),
        const Footer(),
      ],
    );
  }
}
