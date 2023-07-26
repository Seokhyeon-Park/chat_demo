import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
          padding: EdgeInsets.only(top: 20),
          child: Text(
            'Honeypig Kaizoku',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
