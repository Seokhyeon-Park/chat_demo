import 'package:flutter/material.dart';

class TapOpenButton extends StatelessWidget {
  final Color color;
  final String title;
  final double width;
  final double height;
  final double rounded;
  final double fontSize;
  final Color fontColor;

  const TapOpenButton({
    super.key,
    required this.color,
    required this.title,
    required this.width,
    required this.height,
    required this.rounded,
    required this.fontSize,
    required this.fontColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(rounded),
      ),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: fontColor,
        ),
      ),
    );
  }
}
