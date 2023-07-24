import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(58, 166, 185, 1.0)),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    width: 120,
                    height: 120,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      // @유저 프로필 사진
                      image: DecorationImage(
                        image: AssetImage('assets/images/pig.jpeg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'Honey Pig Kaizoku',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
