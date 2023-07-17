import 'package:chat_demo/component/custom_button.dart';
import 'package:flutter/material.dart';

class MultButton extends StatefulWidget {
  const MultButton({super.key});

  @override
  State<MultButton> createState() => _MultButtonState();
}

class _MultButtonState extends State<MultButton> {
  String selectedButton = 'All';

  buttonChangeEvent(selected) {
    setState(() {
      selectedButton = selected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(58, 166, 185, 1.0),
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomButton(
            buttonChangeEvent: buttonChangeEvent,
            name: 'All',
            width: 120,
            height: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'All'
                ? const Color.fromRGBO(255, 158, 170, 1.0)
                : const Color.fromRGBO(58, 166, 185, 1.0),
          ),
          CustomButton(
            buttonChangeEvent: buttonChangeEvent,
            name: 'My',
            width: 120,
            height: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'My'
                ? const Color.fromRGBO(255, 158, 170, 1.0)
                : const Color.fromRGBO(58, 166, 185, 1.0),
          ),
          CustomButton(
            buttonChangeEvent: buttonChangeEvent,
            name: 'Other',
            width: 120,
            height: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'Other'
                ? const Color.fromRGBO(255, 158, 170, 1.0)
                : const Color.fromRGBO(58, 166, 185, 1.0),
          ),
        ],
      ),
    );
  }
}
