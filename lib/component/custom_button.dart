import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String name;
  final double width;
  final double height;
  final Color color;
  final Function buttonChangeEvent;

  const CustomButton({
    super.key,
    required this.name,
    required this.width,
    required this.height,
    required this.color,
    required this.buttonChangeEvent,
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
        fixedSize: Size(width, height),
      ),
      onPressed: () {
        buttonChangeEvent(name);
      },
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 21,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
