import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      height: 60,
      color: const Color.fromRGBO(
        0,
        0,
        0,
        0.3,
      ), // semi-transparent black background

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            // Left-side icon
            const Icon(Icons.navigation_outlined, size: 30),

            // Pushes next icons to the right end
            const Spacer(),

            // Right-side icons
            const Icon(Icons.cast_rounded, size: 30),
            const SizedBox(width: 20),

            // Placeholder for profile image or avatar
            const SizedBox(
              width: 30,
              height: 30,
              child: ColoredBox(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
