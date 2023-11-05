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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title:
            Text("나를 만나고 싶은 외계인", style: TextStyle(color: Color(0xff12887A))),
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
              .map((e) => Container(
                  height: 122,
                  padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black26, width: 1),
                        color: Colors.white),
                    child: Row(children: [
                      SizedBox(
                        width: 110,
                        height: 110,
                        child: Image.asset(
                          "asset/img/home_profile.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: SizedBox(
                            width: 198,
                            height: 110,
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(nameList[e], //이름
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w700)),
                                        sexList[e] == '여'
                                            ? Icon(Icons.female,
                                                color: Colors.red)
                                            : Icon(Icons.male,
                                                color: Colors.blue)
                                      ]),
                                  SizedBox(
                                    width: 190,
                                    child: Text(
                                      comentList[e], //하고싶은말
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff9a9a9a)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                    height: 10,
                                  ),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        SizedBox(
                                          width: 80,
                                          height: 25,
                                          child: FilledButton(
                                            onPressed: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          DetailAlien2()));
                                            },
                                            child: Text('더보기',
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color(0xff276ac9))),
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color(0xffd6ecff)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    10)))),
                                          ),
                                        ),
                                      ])
                                ])),
                      )
                    ]),
                  )))
              .toList()),
    );
  }
}
