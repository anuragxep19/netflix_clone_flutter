import 'package:flutter/material.dart';
import 'package:netflix_ui/core/constants.dart';

class IdleItem extends StatelessWidget {
  final String image;
  final String title;

  const IdleItem({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Image container on the left
        Container(
          width: 150,
          height: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.fill, // Fill the container completely
            ),
          ),
        ),

        constWidth20, // Spacer between image and text
        // Title text in the middle (expands to fill available space)
        Expanded(
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            overflow: TextOverflow.ellipsis, // Avoid overflow
          ),
        ),

        // Play icon on the right
        const Icon(Icons.play_circle_outline, size: 50),
      ],
    );
  }
}
