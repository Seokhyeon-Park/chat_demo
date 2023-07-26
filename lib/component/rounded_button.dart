import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color mainColor;
  final double fontSize;
  final String title;
  final double buttonWidth;
  final double buttonHeight;

  const RoundedButton({
    super.key,
    required this.mainColor,
    required this.fontSize,
    required this.title,
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
        backgroundColor: mainColor,
        fixedSize: Size(buttonWidth, buttonHeight),
      ),
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
