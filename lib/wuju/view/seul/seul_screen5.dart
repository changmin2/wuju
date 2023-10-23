import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/seul/seul_screen3.dart';
import 'package:wuju/wuju/view/seul/seul_screen6.dart';

class SeulScreen5 extends StatefulWidget {
  const SeulScreen5({super.key});

  @override
  State<SeulScreen5> createState() => _SeulScreen5State();
}

class _SeulScreen5State extends State<SeulScreen5> {
  var buttonClick = [false, false, false, false, false, false, false];
  final indexList = [0, 1, 2, 3, 4, 5, 6];
  final buttonList = ['월', '화', '수', '목', '금', '토', '일'];
  TimeOfDay startTime = TimeOfDay(hour: 9, minute: 00);
  bool clickStartTime = false;
  TimeOfDay endTime = TimeOfDay(hour: 11, minute: 00);
  bool clickEndTime = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
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
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
          padding: EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Flexible(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 250,
                      child: Text('원하시는\n요일 / 시간을\n입력해주세요.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30)),
                    ),
                    Row(
                        //TextSpan 써보기
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text('5',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w700)),
                          Text('/6', style: TextStyle(fontSize: 30)),
                        ])
                  ],
                )),
            Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  height: 80,
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: indexList
                        .map((e) => SizedBox(
                            width: 40,
                            height: 45,
                            child: OutlinedButton(
                              //버튼클릭시 스타일 변경
                              style: buttonClick[e]
                                  ? ButtonStyle(
                                      alignment: Alignment.center,
                                      backgroundColor: MaterialStateProperty.all<Color>(
                                          Color(0xff589c94)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xffffffff)),
                                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                          EdgeInsets.all(3))) //클릭했을때
                                  : ButtonStyle(
                                      alignment: Alignment.center,
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xffffffff)),
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xff000000)),
                                      side: MaterialStateProperty.all<BorderSide>(
                                          BorderSide(color: Color(0xffe3e3e3))),
                                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                          EdgeInsets.all(3))), //클릭안했을때
                              onPressed: () {
                                setState(() {
                                  buttonClick[e] = !buttonClick[e];
                                });
                              },
                              child: Text(
                                buttonList[e],
                                style: TextStyle(fontSize: 18),
                              ),
                            )))
                        .toList(),
                  ),
                )),
            Flexible(
                child: SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: OutlinedButton(
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffffffff)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff000000)),
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(color: Color(0xffe3e3e3))),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.all(15))), //클릭안했을때
                        onPressed: () async {
                          final TimeOfDay? timeOfday = await showTimePicker(
                              context: context,
                              initialTime: startTime,
                              initialEntryMode: TimePickerEntryMode.input);
                          if (timeOfday != null) {
                            setState(() {
                              clickStartTime = true;
                              startTime = timeOfday;
                            });
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (!clickStartTime)
                                ? Text("시작시간", style: TextStyle(fontSize: 18))
                                : Text(
                                    "${startTime.hour}시 ${startTime.minute}분",
                                    style: TextStyle(fontSize: 18)),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        )))),
            Flexible(
                child: Container(
                    width: double.infinity,
                    height: 55,
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: OutlinedButton(
                        style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xffffffff)),
                            foregroundColor: MaterialStateProperty.all<Color>(
                                Color(0xff000000)),
                            side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(color: Color(0xffe3e3e3))),
                            padding:
                                MaterialStateProperty.all<EdgeInsetsGeometry>(
                                    EdgeInsets.all(15))), //클릭안했을때
                        onPressed: () async {
                          final TimeOfDay? timeOfday = await showTimePicker(
                              context: context,
                              initialTime: endTime,
                              initialEntryMode: TimePickerEntryMode.input);
                          if (timeOfday != null) {
                            setState(() {
                              clickEndTime = true;
                              endTime = timeOfday;
                            });
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            (!clickEndTime)
                                ? Text("종료시간", style: TextStyle(fontSize: 18))
                                : Text("${endTime.hour}시 ${endTime.minute}분",
                                    style: TextStyle(fontSize: 18)),
                            Icon(Icons.keyboard_arrow_down),
                          ],
                        ))))
          ]),
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: Colors.white,
          width: double.infinity,
          height: 80,
          child: FilledButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeulScreen6()));
            },
            child: Text('다음', style: TextStyle(fontSize: 22)),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xff12887A)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)))),
          ),
        ));
  }
}
