import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:netflix_ui/presentation/pages/downloads/constants.dart';

class ImageRotation extends StatelessWidget {
  final double angle; // Rotation angle in degrees
  final String image; // Image URL
  final EdgeInsetsGeometry? margin;

  const ImageRotation({
    super.key,
    required this.angle,
    required this.image,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      // Rotates the image by converting degrees to radians
      angle: angle * math.pi / 180,
      child: Container(
        // Image decoration with rounded corners
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(image), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        margin: margin,
        // Adjusts height based on rotation
        height: angle == 0 ? imageHeight1 : imageHeight2,
        width: imageWidth1,
      ),
    );
  }
}
