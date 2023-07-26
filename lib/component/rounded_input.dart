import 'package:flutter/material.dart';

class RoundedInput extends StatelessWidget {
  final Color mainColor;
  final Color subColor;
  final double widthPer;
  final String hint;

  const RoundedInput({
    super.key,
    required this.mainColor,
    required this.subColor,
    required this.widthPer,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widthPer,
      child: TextField(
        decoration: InputDecoration(
          hintText: hint,
          filled: true,
          // fillColor: mainColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: mainColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: subColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
