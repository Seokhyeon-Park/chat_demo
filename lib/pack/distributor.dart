import 'package:chat_demo/component/rounded_event_button.dart';
import 'package:flutter/material.dart';

class Distributor extends StatefulWidget {
  const Distributor({super.key});

  @override
  State<Distributor> createState() => _DistributorState();
}

class _DistributorState extends State<Distributor> {
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
          RoundedEventButton(
            onTapEvent: buttonChangeEvent,
            title: 'All',
            rounded: 10,
            fontSize: 21,
            fontColor: Colors.white,
            buttonWidth: 120,
            buttonHeight: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'All' ? selectedColor : unselectedColor,
          ),
          RoundedEventButton(
            onTapEvent: buttonChangeEvent,
            title: 'My',
            rounded: 10,
            fontSize: 21,
            fontColor: Colors.white,
            buttonWidth: 120,
            buttonHeight: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'My' ? selectedColor : unselectedColor,
          ),
          RoundedEventButton(
            onTapEvent: buttonChangeEvent,
            title: 'Other',
            rounded: 10,
            fontSize: 21,
            fontColor: Colors.white,
            buttonWidth: 120,
            buttonHeight: 40,
            // @선택에 따라 색상 변경되게 해야함
            color: selectedButton == 'Other' ? selectedColor : unselectedColor,
          ),
        ],
      ),
    );
  }
}
