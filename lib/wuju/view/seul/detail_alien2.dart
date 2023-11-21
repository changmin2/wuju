import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:wuju/user/model/user_modelV2.dart';

class DetailAlien2 extends StatefulWidget {
  final UserModelV2 user;
  const DetailAlien2({
    required this.user,
    super.key});

  @override
  State<DetailAlien2> createState() => _DetailAlien2State();
}

class _DetailAlien2State extends State<DetailAlien2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
              widget.user.user_dv == "1"
              ? "외계인 상세정보"
              : "지구인 상세정보",
              style: TextStyle(color: Color(0xff12887A))),
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
          Container(
              color: Colors.white,
              width: double.infinity,
              height: 150,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: SizedBox(
                  width: 120,
                  height: 120,
                  child: Column(children: [
                    Row(
                        children: [
                      SizedBox(
                        width: 120,
                        height: 120,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "asset/img/home_profile.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: 30, height: 100),
                      SizedBox(
                          width: 170,
                          height: 100,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //이름
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '이름',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff12887A)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                        height: 10,
                                      ),
                                      Text(
                                        widget.user.nick_name,
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                    ]),
                                //성별
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '성별',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff12887A)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                        height: 10,
                                      ),
                                      Text(
                                        '남',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                      Icon(Icons.male,
                                          color: Colors
                                              .blue) //Icon(Icons.female,color: Colors.red)
                                    ]),
                                //언어
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        '언어',
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff12887A)),
                                      ),
                                      SizedBox(
                                        width: 20,
                                        height: 10,
                                      ),
                                      Text(
                                        '영어',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18),
                                      ),
                                    ])
                              ])),
                    ]),
                  ]))),
          Expanded(
              child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Text(
                                '만남가능지역',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff12887A)),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            Text(
                              '부산시 해운대구',
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Text(
                                '가능한 요일/시간',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff12887A)),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            Text(
                              '월수금\n18:00~21:00',
                              style: TextStyle(fontSize: 18),
                            ),
                          ]),
                      SizedBox(
                        width: 20,
                        height: 20,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 130,
                              child: Text(
                                '하고 싶은 말',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff12887A)),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                              height: 10,
                            ),
                            Text(
                              widget.user.user_intro,
                              style: TextStyle(fontSize: 18),

                            ),
                          ]),
                    ],
                  )))
        ]),
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: Colors.white,
          width: double.infinity,
          height: 80,
          child:
          Row(children: [
            SizedBox(
              width: 150,
              height: 40,
              child:  FilledButton(
                onPressed: () {

                },
                child: Text('수락', style: TextStyle(fontSize: 22)),
                style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff336b9f)), //0xff336b9f
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ),
            ),
            SizedBox(
              width: 15,
              height: 10,
            ),
            SizedBox(
            width: 150,
            height: 40,
            child:
            FilledButton(
              onPressed: () {},
              child: Text('거절', style: TextStyle(fontSize: 22)),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xa9c03535)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            )),
          ],)

        ));
  }
}
