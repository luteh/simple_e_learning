import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/course_cubit.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            context.read<CourseCubit>().toPreviousCurriculumUnit();
          },
          child: const Text('<< Sebelumnya'),
        ),
        TextButton(
          onPressed: () {
            context.read<CourseCubit>().toNextCurriculumUnit();
          },
          child: const Text('Selanjutnya >>'),
        ),
      ],
    );
  }
}
