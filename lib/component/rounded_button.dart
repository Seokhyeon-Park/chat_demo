import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String name;
  final double fontSize;
  final double buttonWidth;
  final double buttonHeight;

  const RoundedButton({
    super.key,
    required this.name,
    required this.color,
    required this.fontSize,
    required this.buttonWidth,
    required this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: color,
        fixedSize: Size(buttonWidth, buttonHeight),
      ),
      onPressed: () {},
      child: Text(
        name,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
