import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/domain/models/downloads/downloads.dart';
import 'package:netflix_clone/presentation/bloc/fastLaugh/fast_laugh_bloc.dart';
import 'package:netflix_clone/presentation/pages/fastLaugh/widgets/icon_text.dart';
import 'package:netflix_clone/presentation/pages/fastLaugh/widgets/player.dart';
import 'package:share_plus/share_plus.dart';

ValueNotifier<Set<int>> likeVideoNotifier = ValueNotifier({});

// Inherited widget to pass movie data to video list
class VideoListInheritedWidget extends InheritedWidget {
  final DownloadsModel movieData;

  const VideoListInheritedWidget({
    super.key,
    required super.child,
    required this.movieData,
  });

  @override
  bool updateShouldNotify(covariant VideoListInheritedWidget oldWidget) {
    // Rebuild widgets when movieData changes
    return oldWidget.movieData != movieData;
  }

  // Method to access inherited widget
  static VideoListInheritedWidget? of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<VideoListInheritedWidget>();
  }
}

class VideoList extends StatefulWidget {
  final int index;
  const VideoList({super.key, required this.index});

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    // Get poster path from inherited widget
    final imagePosterPath =
        VideoListInheritedWidget.of(context)!.movieData.posterPath;

    // Select video URL based on index
    final Uri videoUrl = Uri.parse(videos[widget.index % videos.length]);
    return Stack(
      children: [
        // Video player in background
        Player(video: videoUrl),

        // UI overlay on top of the video
        Positioned.fill(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Icon(Icons.volume_off_outlined, size: 35), // Volume icon
                // Action buttons on the right
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // Profile image (movie poster)
                    CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      backgroundImage:
                          imagePosterPath != null
                              ? NetworkImage('$imageBaseUrl$imagePosterPath')
                              : null,
                      radius: 35,
                    ),
                    constHeight20,

                    // Like / LOL button
                    ValueListenableBuilder(
                      valueListenable: likeVideoNotifier,
                      builder: (context, newSet, _) {
                        return IconText(
                          onTap: () {
                            // Toggle like state
                            if (newSet.contains(widget.index)) {
                              likeVideoNotifier.value.remove(widget.index);
                            } else {
                              likeVideoNotifier.value.add(widget.index);
                            }
                            likeVideoNotifier.value.add(widget.index);
                            setState(() {});
                          },
                          icon:
                              newSet.contains(widget.index)
                                  ? Icons.favorite
                                  : Icons.emoji_emotions_rounded,
                          label: 'LOL',
                        );
                      },
                    ),
                    constHeight10,

                    // Add to My List button
                    IconText(icon: Icons.add, label: 'MyList', onTap: () {}),

                    constHeight10,

                    // Share button
                    IconText(
                      icon: Icons.share,
                      label: 'Share',
                      onTap: () async {
                        await Share.share(imagePosterPath ?? 'Nothing');
                      },
                    ),

                    constHeight10,
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
