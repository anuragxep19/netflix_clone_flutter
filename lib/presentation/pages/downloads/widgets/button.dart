import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.label,
    required this.buttonColor,
    required this.textColor,
  });

  final Color buttonColor; // Background color of the button
  final Color textColor; // Text color of the button
  final String label; // Button label

  @override
  Widget build(BuildContext context) {
    return Container(
      // Padding inside the button
      padding: const EdgeInsets.symmetric(vertical: 10),
      // Button styling
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(5), // Rounded corners
      ),
      // Button label
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: textColor,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
