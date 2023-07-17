import 'package:chat_demo/component/chat_list.dart';
import 'package:chat_demo/component/mult_button.dart';
import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(58, 166, 185, 1.0),
      ),
      child: Column(
        children: [
          const MultButton(),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 22,
                      left: 22,
                    ),
                    child: Text(
                      'Chats',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  // @ListView로 변경해야 함
                  ChatList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
