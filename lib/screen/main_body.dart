import 'package:chat_demo/component/chat_room_list.dart';
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
                  ChatRoomList(
                    name: 'Dev',
                    state: 'Joined',
                    date: '2023.07.17 11:49',
                    url:
                        'https://www.michaelpage.com.ph/sites/michaelpage.com.ph/files/2022-06/Software%20Developer.jpg',
                  ),
                  ChatRoomList(
                    name: 'Playground',
                    state: 'Unentered',
                    date: '2023.07.17 13:37',
                    url:
                        'https://wimg.mk.co.kr/meet/neds/2017/01/image_readtop_2017_698116_15470992833069080.jpeg',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
