import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';
import 'package:wuju/wuju/view/sangyong/home_screen.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return DefaultLayout(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenSize.height * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "우",
                        style: TextStyle(
                          color: Color(0xff12887A),
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                      Text(
                        "리동네",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "주",
                        style: TextStyle(
                          color: Color(0xff12887A),
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                      Text(
                        "변",
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "에서",
                        style: TextStyle(
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "외계인",
                        style: TextStyle(
                          color: Color(0xff12887A),
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                      Text(
                        "선생님",
                        style: TextStyle(
                          color: Color(0xff7DB249),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "과 ",
                        style: TextStyle(
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                      Text(
                        "지구인",
                        style: TextStyle(
                          color: Color(0xff12887A),
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                      Text(
                        "학생",
                        style: TextStyle(
                          color: Color(0xff7DB249),
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        "을",
                        style: TextStyle(
                          fontSize: 30.0,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "만나보세요",
                    style: TextStyle(
                      fontSize: 30.0,
                      height: 1, //줄간격
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.2,
              child: Column(
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.child_care,
                          color: Color(0xff7DB249),
                          size: 50.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "외계인",
                              style: TextStyle(
                                color: Color(0xff7DB249),
                                fontSize: 32.0,
                              ),
                            ),
                            Text(
                              "으로 시작",
                              style: TextStyle(
                                fontSize: 32.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen())
                      );
                    },
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.face,
                          color: Color(0xff12887A),
                          size: 50.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "지구인",
                              style: TextStyle(
                                color: Color(0xff12887A),
                                fontSize: 32.0,
                              ),
                            ),
                            Text(
                              "으로 시작",
                              style: TextStyle(
                                fontSize: 32.0,
                              ),
                            ),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Container(
              height: screenSize.height * 0.2,
              child: GestureDetector(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "이미 회원입니다. (로그인 하기)",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                onTap: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
