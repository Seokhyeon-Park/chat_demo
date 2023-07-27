import 'package:flutter/material.dart';

class RoundedEventButton extends StatelessWidget {
  final Color color;
  final String title;
  final double rounded;
  final double fontSize;
  final Color fontColor;
  final double buttonWidth;
  final double buttonHeight;
  final Function onTapEvent;

  const RoundedEventButton({
    super.key,
    required this.title,
    required this.color,
    required this.rounded,
    required this.fontSize,
    required this.fontColor,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.onTapEvent,
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
      onPressed: () {
        (title == 'All' || title == 'My' || title == 'Other')
            ? onTapEvent(title)
            : onTapEvent();
      },
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
