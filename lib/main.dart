import 'package:chat_demo/screen/login_screen.dart';
import 'package:chat_demo/screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  bool isLogin = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: isLogin == true ? const MainScreen() : const LoginScreen(),
    );
  }
}
