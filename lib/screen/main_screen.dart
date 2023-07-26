import 'package:chat_demo/component/chat_list.dart';
import 'package:chat_demo/pack/distributor.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              size: 34,
            ),
          )
        ],
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(58, 166, 185, 1.0),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(58, 166, 185, 1.0),
        ),
        child: Column(
          children: [
            const Distributor(),
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
                    ChatList(
                      name: 'Dev',
                      state: 'Joined',
                      date: '2023.07.17 11:49',
                      url:
                          'https://www.michaelpage.com.ph/sites/michaelpage.com.ph/files/2022-06/Software%20Developer.jpg',
                    ),
                    ChatList(
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
      ),
    );
  }
}
