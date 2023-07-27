import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String title;
  final double rounded;
  final Color fontColor;
  final double fontSize;
  final double buttonWidth;
  final double buttonHeight;

  const RoundedButton({
    super.key,
    required this.title,
    required this.rounded,
    required this.color,
    required this.fontColor,
    required this.fontSize,
    required this.buttonWidth,
    required this.buttonHeight,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rounded),
        ),
        shadowColor: Colors.transparent,
        backgroundColor: color,
        fixedSize: Size(buttonWidth, buttonHeight),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: fontColor,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
