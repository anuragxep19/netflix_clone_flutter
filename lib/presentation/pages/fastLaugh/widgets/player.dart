import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {
  final Uri video;

  const Player({super.key, required this.video});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late VideoPlayerController videoPlayerController;
  late bool isPlaying;
  late double opacity;
  @override
  void initState() {
    super.initState();

    // Initialize the controller with the network video URL
    videoPlayerController =
        VideoPlayerController.networkUrl(widget.video)
          ..initialize().then((_) {
            // Start playback when initialization completes
            setState(() {}); // Refresh to reflect initialized state
            videoPlayerController.play();
            opacity = 1;
          })
          ..addListener(() {
            setState(() {
              isPlaying = videoPlayerController.value.isPlaying;
            });
          });
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      if (context.mounted) {
        setState(() {
          opacity = 0;
        });
      }
    });
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:
          videoPlayerController.value.isInitialized
              ? Stack(
                children: [
                  Positioned.fill(
                    child: AspectRatio(
                      // Display video with its original aspect ratio
                      aspectRatio: videoPlayerController.value.aspectRatio,
                      child: VideoPlayer(videoPlayerController),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        opacity = 1;
                        isPlaying
                            ? videoPlayerController.pause()
                            : videoPlayerController.play();
                      });
                    },
                    child: Center(
                      child: Opacity(
                        opacity: opacity,
                        child: Icon(
                          isPlaying ? Icons.play_arrow : Icons.pause,
                          color: Colors.grey,
                          size: 100,
                        ),
                      ),
                    ),
                  ),
                ],
              )
              : const Center(
                // Show loader while initializing
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
    );
  }

  @override
  void dispose() {
    videoPlayerController.dispose(); // Release resources
    super.dispose();
  }
}
