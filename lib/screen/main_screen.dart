import 'package:chat_demo/component/create_chat_button.dart';
import 'package:chat_demo/component/menu_button.dart';
import 'package:chat_demo/screen/main_body.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Honey Pig Kaizoku',
          style: TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: const MenuButton(),
        actions: const [CreateChatButton()],
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(58, 166, 185, 1.0),
        centerTitle: true,
        elevation: 0,
      ),
      body: const MainBody(),
    );
  }
}
