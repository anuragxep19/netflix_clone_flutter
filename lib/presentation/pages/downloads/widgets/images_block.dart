import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_ui/core/strings.dart';
import 'package:netflix_ui/presentation/bloc/downloads/downloads_bloc.dart';
import 'package:netflix_ui/presentation/pages/downloads/Widgets/image_rotation.dart';

class ImagesBlock extends StatelessWidget {
  const ImagesBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DownloadsBloc, DownloadsState>(
      builder: (context, state) {
        return SizedBox(
          child:
              state.isLoading || state.downloadsImages.isEmpty
                  // Show loader while data is being fetched
                  ? const Center(child: CircularProgressIndicator())
                  : state.downloadsImages[0].posterPath != null
                  ? Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background circle
                      const CircleAvatar(
                        backgroundColor: Colors.grey,
                        radius: 120,
                      ),
                      // Left rotated image
                      ImageRotation(
                        angle: 20,
                        image:
                            '$imageBaseUrl${state.downloadsImages[0].posterPath}',
                        margin: const EdgeInsets.only(bottom: 20, left: 155),
                      ),
                      // Right rotated image
                      ImageRotation(
                        angle: -20,
                        image:
                            '$imageBaseUrl${state.downloadsImages[1].posterPath}',
                        margin: const EdgeInsets.only(bottom: 20, right: 155),
                      ),
                      // Center image
                      ImageRotation(
                        angle: 0,
                        image:
                            '$imageBaseUrl${state.downloadsImages[2].posterPath}',
                        margin: const EdgeInsets.only(top: 10),
                      ),
                    ],
                  )
                  : const CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 120,
                  ),
        );
      },
    );
  }
}
