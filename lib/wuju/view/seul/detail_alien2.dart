import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/user/model/confirmMeet_request.dart';
import 'package:wuju/user/model/user_model.dart';
import 'package:wuju/user/model/user_modelV2.dart';
import 'package:wuju/user/provider/user_me_provider.dart';
import 'package:wuju/user/repository/member_repository.dart';

class DetailAlien2 extends ConsumerStatefulWidget {
  final UserModelV2 user;
  const DetailAlien2({
    required this.user,
    super.key});

  @override
  ConsumerState<DetailAlien2> createState() => _DetailAlien2State();
}

class _DetailAlien2State extends ConsumerState<DetailAlien2> {

  @override
  Widget build(BuildContext context) {
    final state = ref.read(userMeProvider) as UserModel;
    var skills = widget.user.USER_SKILL.map((e) => e.skill).join(", ") ;
    var poDays = widget.user.USER_WEEK.map((e) => e.week).join(", ");
    print(widget.user.nick_name);
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
                                      Flexible(
                                        child: Text(
                                          skills,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 18),
                                        ),
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
                              widget.user.address_1+" "+widget.user.address_2+" "+
                                  widget.user.address_3,
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
                              poDays+"\n"
                                  +widget.user.start_time.substring(0,2)+"시 ~ "
                                  +widget.user.end_time.substring(0,2)+"시",
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
          widget.user.decision_dv == ''? Row(children: [
            SizedBox(
              width: 150,
              height: 40,
              child:  FilledButton(
                onPressed: ()  async {
                  String path = state.user_dv == "1" ? "A2E" : "E2A";
                  ConfirmMeetRequest request = ConfirmMeetRequest(
                      path: path,
                      decision_dv: 'Y',
                      earthling_id: path == "E2A" ? state.user_id : widget.user.user_id,
                      alien_id: path == "E2A" ? widget.user.user_id : state.user_id
                  );
                  await ref.read(memberRepositoryProvider).confirmMeet(request);

                  Navigator.pop(context);
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
              onPressed: () async{
                String path = state.user_dv == "2" ? "A2E" : "E2A";
                ConfirmMeetRequest request = ConfirmMeetRequest(
                    path: path,
                    decision_dv: 'N',
                    earthling_id: path == "E2A" ? state.user_id : widget.user.user_id,
                    alien_id: path == "E2A" ? widget.user.user_id : state.user_id
                );
                await ref.read(memberRepositoryProvider).confirmMeet(request);
              },
              child: Text('거절', style: TextStyle(fontSize: 22)),
              style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xa9c03535)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
            )),
          ],):Container()

        ) );
  }
}
