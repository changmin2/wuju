import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../user/model/user_model.dart';

class DetailAlien extends ConsumerStatefulWidget {
  final UserModel user;
  const DetailAlien({required this.user, super.key});

  @override
  ConsumerState<DetailAlien> createState() => _DetailAlienState();
}

class _DetailAlienState extends ConsumerState<DetailAlien> {
  @override
  Widget build(BuildContext context) {
    var skills = widget.user.USER_SKILL.map((e) => e.skill).join(", ");
    var poDays = widget.user.USER_WEEK.map((e) => e.week).join(", ");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          widget.user.user_dv == "1" ? "외계인 상세정보" : "지구인 상세정보",
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
      body: Column(
        children: [
          Container(
            color: Colors.white,
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: Row(
              children: [
                Image.asset(
                  "asset/img/home_profile.png",
                  fit: BoxFit.fill,
                  width: 120,
                  height: 120,
                ),
                SizedBox(width: 30),
                SizedBox(
                  height: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //이름
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '이름',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff12887A),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            widget.user.nick_name,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                      //성별
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '성별',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff12887A),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            '남',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                          Icon(
                            Icons.male,
                            color: Colors.blue,
                          ) //Icon(Icons.female,color: Colors.red)
                        ],
                      ),
                      //언어
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '언어',
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff12887A),
                            ),
                          ),
                          SizedBox(width: 20),
                          Text(
                            skills,
                            // overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          '만남가능지역',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff12887A),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        widget.user.address_1 +
                            " " +
                            widget.user.address_2 +
                            " " +
                            widget.user.address_3,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 130,
                        child: Text(
                          '가능한 요일/시간',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff12887A),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Text(
                        poDays +
                            "\n" +
                            widget.user.start_time.substring(0, 2) +
                            "시 ~ " +
                            widget.user.end_time.substring(0, 2) +
                            "시",
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: Text(
                          '하고 싶은 말',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff12887A),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Text(
                        widget.user.user_intro,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.white,
        width: double.infinity,
        height: 80,
        child: FilledButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Color(0xff12887A),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          child: Text(
            '신청하기',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
