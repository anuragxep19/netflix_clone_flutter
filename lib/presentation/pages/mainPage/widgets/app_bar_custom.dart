import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AppBarCustom({super.key, required this.text, this.style});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,

      // Left side: Custom title
      leading: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(text, style: style),
      ),
      leadingWidth: 200,

      // Right side: Cast icon + blue profile icon placeholder
      actions: const [
        Icon(Icons.cast_rounded, size: 30),
        SizedBox(width: 20),
        // Profile image or user icon placeholder
        SizedBox(width: 30, height: 30, child: ColoredBox(color: Colors.blue)),
        SizedBox(width: 10),
      ],
    );
  }
}
