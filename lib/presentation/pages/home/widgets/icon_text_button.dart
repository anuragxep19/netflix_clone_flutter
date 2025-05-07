import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  final double? width;
  final double? height;
  final IconData icon;
  final Color? iconColor;
  final double? iconSize;
  final String label;
  final TextStyle? style;
  final Color? backgroundColor;

  const IconTextButton({
    super.key,
    this.width,
    this.height,
    required this.icon,
    required this.label,
    this.style,
    this.backgroundColor,
    this.iconColor,
    this.iconSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),

      // TextButton with icon and label
      child: TextButton.icon(
        onPressed: () {},

        // Icon part
        icon: Icon(
          icon,
          color: iconColor ?? Colors.black,
          size: iconSize ?? 30,
        ),

        // Label part
        label: Text(
          label,
          style:
              style ??
              const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
        ),

        // Button styling
        style: ButtonStyle(
          shape: WidgetStatePropertyAll(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? Colors.white,
          ),
          padding: const WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20),
          ),
        ),
      ),
    );
  }
}
