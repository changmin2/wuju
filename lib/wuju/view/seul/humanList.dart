import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/seul/detail_alien2.dart';

class HumanList extends StatefulWidget {
  const HumanList({super.key});

  @override
  State<HumanList> createState() => _HumanListState();
}

class _HumanListState extends State<HumanList> {
  final indexList = [0, 1, 2];
  final nameList = ['김진슬', '오세헌', '이창민'];
  final sexList = ['여', '남', '남'];
  final comentList = [
    '회화위주로 배우고 싶어요!',
    '단기토익목표를 달성하고 싶습니다.',
    '여행에서 사용할 실용적인 표현을 배우고 싶습니다!'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "나를 만나고 싶은 외계인",
          style: TextStyle(
            color: Color(0xff12887A),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            //뒤로가기
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: indexList
            .map(
              (e) => Container(
                height: 120,
                padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffE5E5E5),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "asset/img/home_profile.png",
                        fit: BoxFit.fill,
                        width: 120,
                        height: 120,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width - 152,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  nameList[e], //이름
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                sexList[e] == '여'
                                    ? Icon(Icons.female, color: Colors.red)
                                    : Icon(Icons.male, color: Colors.blue)
                              ],
                            ),
                            Text(
                              comentList[e], //하고싶은말
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff9a9a9a),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 60,
                                  height: 30,
                                  child: FilledButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => DetailAlien2(),
                                        ),
                                      );
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                        Color(0xffD3F2FF),
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      '더보기',
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Color(0xff194BFC),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
