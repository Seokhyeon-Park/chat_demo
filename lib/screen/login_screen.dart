import 'package:chat_demo/component/rounded_event_button.dart';
import 'package:chat_demo/component/rounded_input.dart';
import 'package:chat_demo/pack/login_header.dart';
import 'package:chat_demo/screen/main_screen.dart';
import 'package:chat_demo/screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var userId = '';
  var userPw = '';

  getId(id) {
    userId = id;
  }

  getPw(pw) {
    userPw = pw;
  }

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
                child: const LoginHeader(
                  title: 'Honeypig Kaizoku',
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
                      returnText: getId,
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
                      returnText: getPw,
                      mainColor: mainColor,
                      subColor: subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
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
                          onTapEvent: () {
                            if (userId == '' && userPw == '') {
                              Navigator.of(context).push(
                                _createRoute(
                                  SignUpScreen(
                                    mainColor: mainColor,
                                    subColor: subColor,
                                  ),
                                ),
                              );
                            } else {
                              // @ID/PW 확인
                              Navigator.of(context).push(
                                _createRoute(
                                  const MainScreen(),
                                ),
                              );
                            }
                          },
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

Route _createRoute(page) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => page,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = const Offset(0.0, 1.0);
      var end = Offset.zero;
      var curve = Curves.ease;
      var curveTween = CurveTween(curve: curve);

      var tween = Tween(begin: begin, end: end).chain(curveTween);

      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
