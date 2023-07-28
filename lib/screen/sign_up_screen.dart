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
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: mainColor,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: const LoginHeader(
                  title: 'Create Account',
                ),
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
                      returnText: (text) {
                        print(text);
                      },
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: false,
                      hint: 'ID',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        print(text);
                      },
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: true,
                      hint: 'PW',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        print(text);
                      },
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: false,
                      hint: 'NAME',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        print(text);
                      },
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.number,
                      encrypt: false,
                      hint: 'WEIGHT (Default : 100)',
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
      ),
    );
  }
}
