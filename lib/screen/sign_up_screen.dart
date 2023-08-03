import 'package:chat_demo/component/rounded_event_button.dart';
import 'package:chat_demo/component/rounded_input.dart';
import 'package:chat_demo/other/network.dart';
import 'package:chat_demo/pack/login_header.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class SignUpScreen extends StatefulWidget {
  final Color mainColor;
  final Color subColor;

  const SignUpScreen({
    super.key,
    required this.mainColor,
    required this.subColor,
  });

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var userId = '';
  var userPw = '';
  var userName = '';
  int userWeight = 100;
  Color mintColor = const Color.fromRGBO(193, 236, 228, 1.0);

  final ImagePicker _picker = ImagePicker();

  getImg() async {
    // 이미지 불러오기
    XFile? selectImage = await _picker.pickImage(
      source: ImageSource.gallery,
      maxHeight: 75,
      maxWidth: 75,
      imageQuality: 30,
    );

    if (selectImage != null) {
      // 이미지 물리 경로
      dynamic sendData = selectImage.path;
      var formData = FormData.fromMap(
        {'image': await MultipartFile.fromFile(sendData)},
      );

      print(formData);
    }
  }

  getId(id) {
    userId = id;
  }

  getPw(pw) {
    userPw = pw;
  }

  getName(name) {
    userName = name;
  }

  getWeight(weight) {
    if (weight == '') {
      userWeight = 100;
    } else {
      userWeight = int.parse(weight);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: widget.mainColor,
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Flexible(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: const LoginHeader(
                  title: 'Create Account',
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
                      returnText: (text) {
                        getId(text);
                      },
                      mainColor: widget.mainColor,
                      subColor: widget.subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: false,
                      hint: 'ID',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        getPw(text);
                      },
                      mainColor: widget.mainColor,
                      subColor: widget.subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: true,
                      hint: 'PW',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        getName(text);
                      },
                      mainColor: widget.mainColor,
                      subColor: widget.subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.text,
                      encrypt: false,
                      hint: 'NAME',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedInput(
                      returnText: (text) {
                        getWeight(text);
                      },
                      mainColor: widget.mainColor,
                      subColor: widget.subColor,
                      widthPer: 0.85,
                      inputType: TextInputType.number,
                      encrypt: false,
                      hint: 'WEIGHT (Default : 100)',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: RoundedEventButton(
                      title: 'Profile image',
                      rounded: 30,
                      color: mintColor,
                      fontColor: Colors.black,
                      fontSize: 16,
                      buttonWidth: MediaQuery.of(context).size.width * 0.4,
                      buttonHeight: 40,
                      onTapEvent: getImg,
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
                          color: widget.subColor,
                          rounded: 30,
                          fontSize: 19,
                          fontColor: Colors.white,
                          title: '● ●',
                          onTapEvent: () async {
                            // if 정상적으로 작성 및 가입이 된 경우.
                            const url = 'http://localhost:8000/account/create';

                            Network network = Network(
                              url,
                              userId,
                              userPw,
                              userName,
                              userWeight,
                            );

                            var apiResult = await network.createAccount();

                            print(apiResult);

                            // Navigator.pop(context);
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
