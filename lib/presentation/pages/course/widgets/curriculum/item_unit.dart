import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../di/injection_container.dart';
import '../../../../../domain/model/course.dart';
import '../../cubit/course_cubit.dart';
import 'cubit/curriculum_unit_cubit.dart';
import 'item_unit_button.dart';

class ItemUnit extends StatelessWidget {
  final Curriculum curriculum;
  const ItemUnit({Key? key, required this.curriculum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CurriculumUnitCubit>(),
      child: InkWell(
        onTap: () {
          context.read<CourseCubit>().selectCurriculumUnit(curriculum);
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          color: context.select((CourseCubit element) =>
                      element.state.selectedCurriculumUnit) ==
                  curriculum
              ? Colors.blue[50]
              : Colors.white,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.play_circle_fill_rounded,
                color: Colors.grey[400],
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Html(
                      data: curriculum.title,
                      style: {
                        "body": Style(
                          padding: EdgeInsets.zero,
                          margin: EdgeInsets.zero,
                          fontSize: FontSize.medium,
                        ),
                      },
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      '${curriculum.duration ~/ 60} Menit',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ],
                ),
              ),
              ItemUnitButton(
                curriculum: curriculum,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
