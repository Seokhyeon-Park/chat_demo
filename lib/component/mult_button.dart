import 'package:chat_demo/component/custom_button.dart';
import 'package:flutter/material.dart';

class MultButton extends StatefulWidget {
  const MultButton({super.key});

  @override
  State<MultButton> createState() => _MultButtonState();
}

class _MultButtonState extends State<MultButton> {
  String selectedButton = 'All';
  Color selectedColor = const Color.fromRGBO(255, 158, 170, 1.0);
  Color unselectedColor = const Color.fromRGBO(58, 166, 185, 1.0);

  buttonChangeEvent(selected) {
    // @상단 버튼(3개)에 따라 chat_list 변경되어야 함
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
            color: selectedButton == 'All' ? selectedColor : unselectedColor,
          ),
          CustomButton(
            buttonChangeEvent: buttonChangeEvent,
            name: 'My',
            width: 120,
            height: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'My' ? selectedColor : unselectedColor,
          ),
          CustomButton(
            buttonChangeEvent: buttonChangeEvent,
            name: 'Other',
            width: 120,
            height: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'Other' ? selectedColor : unselectedColor,
          ),
        ],
      ),
    );
  }
}
