import 'package:flutter/material.dart';

class RoundedEventButton extends StatelessWidget {
  final Color color;
  final String name;
  final double fontSize;
  final double buttonWidth;
  final double buttonHeight;
  final Function onTapEvent;

  const RoundedEventButton({
    super.key,
    required this.name,
    required this.color,
    required this.fontSize,
    required this.buttonWidth,
    required this.buttonHeight,
    required this.onTapEvent,
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
      onPressed: () {
        (name == 'All' || name == 'My' || name == 'Other')
            ? onTapEvent(name)
            : onTapEvent();
      },
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
