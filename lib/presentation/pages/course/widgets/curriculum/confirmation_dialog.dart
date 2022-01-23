import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../../../di/injection_container.dart';
import '../../../../../domain/core/result/failure.dart';
import '../../../../../domain/model/course.dart';
import 'cubit/curriculum_unit_cubit.dart';

class ConfirmationDialog extends StatelessWidget {
  final Curriculum curriculum;
  const ConfirmationDialog({Key? key, required this.curriculum})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CurriculumUnitCubit>(),
      child: Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Html(
                data:
                    'Video "${curriculum.title}" sudah tersimpan. Apakah anda mau menghapusnya dari penyimpanan?',
                style: {
                  "body": Style(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    fontSize: FontSize.medium,
                  ),
                },
              ),
              // Text(
              //   'Video ${curriculum.title} sudah tersimpan. Apakah anda mau menghapusnya dari penyimpanan?',
              // ),
              const SizedBox(
                height: 16,
              ),
              BlocConsumer<CurriculumUnitCubit, CurriculumUnitState>(
                listenWhen: (previous, current) =>
                    previous.removeFileCacheResult !=
                    current.removeFileCacheResult,
                listener: (context, state) {
                  state.removeFileCacheResult.maybeWhen(
                    success: (data) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content:
                              Text('Video berhasil dihapus dari penyimpanan'),
                        ),
                      );
                      Navigator.of(context).pop(true);
                    },
                    error: (failure) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(Failure.getErrorMessage(failure)),
                        ),
                      );
                      Navigator.of(context).pop();
                    },
                    orElse: () => null,
                  );
                },
                buildWhen: (previous, current) =>
                    previous.removeFileCacheResult !=
                    current.removeFileCacheResult,
                builder: (context, state) {
                  return state.removeFileCacheResult.maybeWhen(
                    loading: () => const CircularProgressIndicator(),
                    orElse: () {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Tidak'),
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              context
                                  .read<CurriculumUnitCubit>()
                                  .removeFileCache(
                                      key: curriculum.offlineVideoLink);
                            },
                            child: const Text('Hapus'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
