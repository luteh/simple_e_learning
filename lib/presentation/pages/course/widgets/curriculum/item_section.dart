import 'package:flutter/material.dart';

import '../../../../../domain/model/course.dart';

class ItemSection extends StatelessWidget {
  final Curriculum curriculum;
  const ItemSection({Key? key, required this.curriculum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[200],
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            curriculum.title,
            style: Theme.of(context).textTheme.subtitle2,
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
    );
  }
}
