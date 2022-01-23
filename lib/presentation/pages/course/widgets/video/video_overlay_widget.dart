import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoOverlayWidget extends StatefulWidget {
  final VideoPlayerController videoController;
  const VideoOverlayWidget({Key? key, required this.videoController})
      : super(key: key);

  @override
  State<VideoOverlayWidget> createState() => _VideoOverlayWidgetState();
}

class _VideoOverlayWidgetState extends State<VideoOverlayWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 50),
          reverseDuration: const Duration(milliseconds: 200),
          child: widget.videoController.value.isPlaying
              ? const SizedBox.shrink()
              : Container(
                  color: Colors.black26,
                  child: const Center(
                    child: Icon(
                      Icons.play_circle_filled_rounded,
                      color: Colors.white,
                      size: 100.0,
                      semanticLabel: 'Play',
                    ),
                  ),
                ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: VideoProgressIndicator(
            widget.videoController,
            allowScrubbing: true,
          ),
        ),
        GestureDetector(
          onTap: () {
            widget.videoController.value.isPlaying
                ? widget.videoController.pause()
                : widget.videoController.play();
            setState(() {});
          },
        ),
      ],
    );
  }
}
