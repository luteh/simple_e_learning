import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../domain/core/result/failure.dart';
import '../../../../../domain/model/course.dart';
import '../../cubit/course_cubit.dart';
import 'confirmation_dialog.dart';
import 'cubit/curriculum_unit_cubit.dart';

class ItemUnitButton extends StatelessWidget {
  final Curriculum curriculum;
  const ItemUnitButton({Key? key, required this.curriculum}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context
        .read<CurriculumUnitCubit>()
        .getFileCache(key: curriculum.offlineVideoLink);
    return BlocListener<CurriculumUnitCubit, CurriculumUnitState>(
      listenWhen: (previous, current) =>
          previous.downloadFileResult != current.downloadFileResult,
      listener: (context, state) {
        state.downloadFileResult.maybeWhen(
            orElse: () => null,
            success: (data) {
              context
                  .read<CurriculumUnitCubit>()
                  .getFileCache(key: curriculum.offlineVideoLink);
              context.read<CourseCubit>().getSelectedVideoCache();
            },
            error: (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(Failure.getErrorMessage(failure)),
                ),
              );
            });
      },
      child: Visibility(
        visible: curriculum.offlineVideoLink.isNotEmpty,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 8,
          ),
          child: BlocBuilder<CurriculumUnitCubit, CurriculumUnitState>(
            buildWhen: (previous, current) =>
                previous.getFileCacheResult != current.getFileCacheResult,
            builder: (context, state) {
              return state.getFileCacheResult.maybeWhen(
                loading: () {
                  return const CircularProgressIndicator();
                },
                success: (data) {
                  if (data == null) {
                    return _buildDownloadButton(context);
                  }
                  return _buildSavedButton(context);
                },
                orElse: () {
                  return _buildDownloadButton(context);
                },
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadButton(BuildContext context) {
    return BlocBuilder<CurriculumUnitCubit, CurriculumUnitState>(
      buildWhen: (previous, current) =>
          previous.downloadFileResult != current.downloadFileResult,
      builder: (context, state) {
        return state.downloadFileResult.maybeWhen(
          loading: () {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Downloading',
                  style: Theme.of(context)
                      .textTheme
                      .caption
                      ?.copyWith(fontSize: 10),
                ),
              ],
            );
          },
          orElse: () {
            return ElevatedButton(
              onPressed: () {
                context
                    .read<CurriculumUnitCubit>()
                    .downloadFile(url: curriculum.offlineVideoLink);
              },
              child: Text(
                'Tonton Offline',
                style: Theme.of(context).textTheme.button?.copyWith(
                      fontSize: 12,
                      color: Colors.white,
                    ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(8),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildSavedButton(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: () async {
        final _result = await showDialog(
          barrierDismissible: false,
          context: context,
          builder: (context) => ConfirmationDialog(
            curriculum: curriculum,
          ),
        );

        if (_result) {
          context
              .read<CurriculumUnitCubit>()
              .getFileCache(key: curriculum.offlineVideoLink);
        }
      },
      icon: const Icon(
        Icons.check_circle_outline_rounded,
        color: Colors.blue,
        size: 14,
      ),
      label: Text(
        'Tersimpan',
        style: Theme.of(context).textTheme.button?.copyWith(
              fontSize: 12,
            ),
      ),
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.all(8),
      ),
    );
  }
}
