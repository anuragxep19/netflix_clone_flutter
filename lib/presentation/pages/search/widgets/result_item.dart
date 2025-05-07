import 'package:flutter/material.dart';

class ResultItem extends StatelessWidget {
  final String image;

  const ResultItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background image with rounded corners
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.fill, // Fill the entire container
        ),
      ),
    );
  }
}
