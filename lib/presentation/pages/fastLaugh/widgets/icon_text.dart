import 'package:flutter/material.dart';
import 'package:netflix_clone/core/constants.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String label;
  final Function() onTap;
  final double? iconSize;
  final TextStyle? style;

  const IconText({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
    this.iconSize,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap, // Trigger the callback when tapped
      child: Column(
        children: [
          constHeight10,
          Icon(icon, size: iconSize ?? 30),
          Text(label, style: style),
        ],
      ),
    );
  }
}
