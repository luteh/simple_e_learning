import 'package:flutter/material.dart';

import '../../../domain/core/result/failure.dart';

class MyErrorWidget extends StatelessWidget {
  final Failure failure;
  final Function() onPressRetry;
  const MyErrorWidget({
    Key? key,
    required this.failure,
    required this.onPressRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _message = Failure.getErrorMessage(failure);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _message,
          ),
          const SizedBox(
            height: 8,
          ),
          ElevatedButton(
            onPressed: () {
              onPressRetry.call();
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
