import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Player extends StatefulWidget {
  final Uri video;
  final void Function(bool isPlaying) onChanged;

  const Player({super.key, required this.video, required this.onChanged});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  late VideoPlayerController videoPlayerController;

  @override
  void initState() {
    super.initState();

    // Initialize the controller with the network video URL
    videoPlayerController = VideoPlayerController.networkUrl(widget.video)
      ..initialize().then((_) {
        // Start playback when initialization completes
        setState(() {}); // Refresh to reflect initialized state
        videoPlayerController.play();
        widget.onChanged(true);
      });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child:
          videoPlayerController.value.isInitialized
              ? AspectRatio(
                // Display video with its original aspect ratio
                aspectRatio: videoPlayerController.value.aspectRatio,
                child: VideoPlayer(videoPlayerController),
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
