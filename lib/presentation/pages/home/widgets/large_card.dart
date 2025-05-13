import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';
import 'package:netflix_clone/core/strings.dart';
import 'package:netflix_clone/presentation/pages/fastLaugh/widgets/icon_text.dart';
import 'package:netflix_clone/presentation/pages/home/widgets/icon_text_button.dart';

class LargeCard extends StatelessWidget {
  final String image;
  const LargeCard({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.topLeft,
      children: [
        // Background Image
        Container(
          width: size.width,
          height: size.height - 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('$imageBaseUrl$image'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        // Top Menu Row
        Positioned(
          top: 60,
          left: 60,
          child: Row(
            children: [
              const Text('TV Shows'),
              constWidth(50),
              const Text('Movies'),
              constWidth(50),
              const Text('Categories'),
              const Icon(Icons.arrow_drop_down),
            ],
          ),
        ),

        // Bottom Buttons Row
        Positioned(
          bottom: 10,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconText(icon: Icons.add, label: 'My List', onTap: () {}),
              const IconTextButton(icon: Icons.play_arrow_sharp, label: 'Play'),
              IconText(
                icon: Icons.info_outline_rounded,
                label: 'Info',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
