import 'package:flutter/material.dart';

class RoundedInput extends StatefulWidget {
  final Color mainColor;
  final Color subColor;
  final double widthPer;
  final String hint;
  final bool encrypt;
  final Function returnText;

  const RoundedInput({
    super.key,
    required this.mainColor,
    required this.subColor,
    required this.widthPer,
    required this.hint,
    required this.encrypt,
    required this.returnText,
  });

  @override
  State<RoundedInput> createState() => _RoundedInputState();
}

class _RoundedInputState extends State<RoundedInput> {
  final _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * widget.widthPer,
      child: TextField(
        obscureText: widget.encrypt,
        onChanged: (text) {
          widget.returnText(text);
        },
        controller: _textEditingController,
        decoration: InputDecoration(
          hintText: widget.hint,
          filled: true,
          // fillColor: mainColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: widget.mainColor,
              width: 1.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: widget.subColor,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}
