import 'package:chat_demo/component/rounded_event_button.dart';
import 'package:chat_demo/component/rounded_input.dart';
import 'package:chat_demo/pack/login_header.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  final Color mainColor;
  final Color subColor;

  const SignUpScreen({
    super.key,
    required this.mainColor,
    required this.subColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              alignment: Alignment.center,
              child: const LoginHeader(),
            ),
          ),
          Flexible(
            flex: 6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: RoundedInput(
                    returnText: () {},
                    mainColor: mainColor,
                    subColor: subColor,
                    widthPer: 0.85,
                    encrypt: false,
                    hint: 'ID',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 22.0),
                  child: RoundedInput(
                    returnText: () {},
                    mainColor: mainColor,
                    subColor: subColor,
                    widthPer: 0.85,
                    encrypt: true,
                    hint: 'PW',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14),
                      child: RoundedEventButton(
                        buttonHeight: 44,
                        buttonWidth: 80,
                        color: subColor,
                        rounded: 30,
                        fontSize: 19,
                        fontColor: Colors.white,
                        title: '● ●',
                        onTapEvent: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
