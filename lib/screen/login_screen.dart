import 'package:chat_demo/component/rounded_button.dart';
import 'package:chat_demo/component/rounded_input.dart';
import 'package:chat_demo/pack/login_header.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Color mainColor = const Color.fromRGBO(58, 166, 185, 1.0);
    Color subColor = const Color.fromRGBO(255, 158, 170, 1.0);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: mainColor,
                ),
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
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      hint: 'ID',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      hint: 'PW',
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(14),
                        child: RoundedButton(
                          buttonHeight: 44,
                          buttonWidth: 80,
                          color: subColor,
                          rounded: 30,
                          fontSize: 19,
                          fontColor: Colors.white,
                          title: '● ●',
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
