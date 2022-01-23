import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:video_player/video_player.dart';

import '../../../../../domain/model/course.dart';
import '../../../../core/widgets/my_error_widget.dart';
import '../../cubit/course_cubit.dart';
import 'video_overlay_widget.dart';

class CourseVideo extends StatefulWidget {
  const CourseVideo({Key? key}) : super(key: key);

  @override
  State<CourseVideo> createState() => _CourseVideoState();
}

class _CourseVideoState extends State<CourseVideo> {
  late VideoPlayerController _videoController;

  @override
  void initState() {
    _videoController = VideoPlayerController.network('');
    super.initState();
  }

  @override
  Future<void> dispose() async {
    await _videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        AspectRatio(
          aspectRatio: 16 / 9,
          child: BlocBuilder<CourseCubit, CourseState>(
            buildWhen: (previous, current) =>
                previous.getSelectedVideoCacheResult != current.getSelectedVideoCacheResult,
            builder: (context, state) {
              return state.getSelectedVideoCacheResult.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Center(child: CircularProgressIndicator()),
                success: (data) {
                  return FutureBuilder<bool>(
                    future: _changeVideo(
                      context.read<CourseCubit>().state.selectedCurriculumUnit,
                      data,
                    ),
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Center(
                          child: Text(
                              '${(snapshot.error as PlatformException).message}'),
                        );
                      }
                      if (snapshot.data == false) {
                        return const Center(
                            child:
                                Text('Streaming online video tidak tersedia'));
                      } else if (snapshot.data == true) {
                        return Stack(
                          alignment: Alignment.center,
                          children: [
                            VideoPlayer(_videoController),
                            VideoOverlayWidget(
                              videoController: _videoController,
                            ),
                          ],
                        );
                      }

                      return const Center(child: CircularProgressIndicator());
                    },
                  );
                },
                error: (failure) {
                  return MyErrorWidget(
                    failure: failure,
                    onPressRetry: () {
                      context.read<CourseCubit>().getSelectedVideoCache();
                    },
                  );
                },
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 2,
          ),
          child: BlocSelector<CourseCubit, CourseState, String>(
            selector: (state) {
              return state.selectedCurriculumUnit?.title ?? '';
            },
            builder: (context, state) {
              return Html(
                data: state,
                style: {
                  "body": Style(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    fontSize: FontSize.small,
                  ),
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Future<bool> _changeVideo(Curriculum? curriculum, File? localFile) async {
    try {
      log('_changeVideo ->  curriculum: $curriculum, file: $localFile ');
      if (_videoController.value.isPlaying) {
        await _videoController.pause();
      }
      if (localFile != null) {
        _videoController = VideoPlayerController.file(localFile);
      } else {
        if (curriculum == null || curriculum.onlineVideoLink.isEmpty) {
          return false;
        }
        _videoController =
            VideoPlayerController.network(curriculum.onlineVideoLink);
      }
      await _videoController.initialize();
      return true;
    } on PlatformException catch (e) {
      log('$e}');
      throw PlatformException(
        code: e.code,
        message: 'Gagal memuat video, silakan coba lagi',
      );
    }
  }
}
