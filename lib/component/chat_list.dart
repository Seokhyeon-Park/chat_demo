import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final String name;
  final String state; // @USER에 영향을 받음.
  final String date; // @USER에 영향을 받음.
  final String url;

  const ChatList({
    super.key,
    required this.name,
    required this.state,
    required this.date,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 18,
                  right: 12,
                ),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // @유저 프로필 사진
                    image: DecorationImage(
                        image: NetworkImage(url), fit: BoxFit.fill),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      // @ChatList 이름
                      child: Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      // @ChatList 상태 (명)
                      child: Text(
                        state,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color:
                              state == 'Joined' ? Colors.green : Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 18,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                // Padding(
                //   padding: const EdgeInsets.only(top: 10.0),
                //   child: Container(
                //     width: 10,
                //     height: 10,
                //     decoration: const BoxDecoration(
                //       shape: BoxShape.circle,
                //       color: Color.fromRGBO(255, 158, 170, 1.0),
                //     ),
                //   ),
                // ),
                Padding(
                  // padding: const EdgeInsets.only(top: 10.0),
                  padding: const EdgeInsets.only(bottom: 10.0),
                  // @마지막 Chat 시간
                  child: Text(
                    date,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
