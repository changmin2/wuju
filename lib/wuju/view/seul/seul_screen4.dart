import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/seul/seul_screen3.dart';
import 'package:wuju/wuju/view/seul/seul_screen5.dart';

class SeulScreen4 extends StatefulWidget {
  const SeulScreen4({super.key});

  @override
  State<SeulScreen4> createState() => _SeulScreen4State();
}

class _SeulScreen4State extends State<SeulScreen4> {
  var buttonClick = [false,false,false,false,false];
  final indexList = [0,1,2,3,4];
  final buttonList = ['영어','일어','독일어','프랑스어','스페인어'];
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
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 250,
                        child: Text('원하시는 외국어를\n선택해 주세요.',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30)),
                      ),
                      Row(
                        //TextSpan 써보기
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('4',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w700)),
                            Text('/6', style: TextStyle(fontSize: 30)),
                          ])
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      children: indexList.map((e) => Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: SizedBox(
                                width: double.infinity,
                                height: 55,
                                child: OutlinedButton(
                                  //버튼클릭시 스타일 변경
                                  style:
                                  buttonClick[e]?
                                  ButtonStyle(alignment: Alignment.centerLeft,backgroundColor: MaterialStateProperty.all<Color>(Color(
                                      0xff589c94)),foregroundColor :MaterialStateProperty.all<Color>(Color(
                                      0xffffffff))) //클릭했을때
                                      : ButtonStyle(alignment: Alignment.centerLeft,backgroundColor: MaterialStateProperty.all<Color>(Color(
                                      0xffffffff)),foregroundColor :MaterialStateProperty.all<Color>(Color(
                                      0xff000000)),side: MaterialStateProperty.all<BorderSide>(BorderSide(color:Color(
                                      0xffadadad)))), //클릭안했을때
                                  onPressed: () {
                                    setState(() {
                                      //하나의 버튼만 선택가능하도록
                                      for(int i=0;i<5;i++){
                                        if(i==e){
                                          buttonClick[e] = !buttonClick[e];
                                        }else{
                                          buttonClick[i] = false;
                                        }
                                      }
                                    });
                                  },
                                  child: Text(
                                    buttonList[e],
                                    style: TextStyle(fontSize: 18),
                                  ),
                                )))).toList()
                      ,
                    ),
                  ),
                ])),
        bottomNavigationBar: Container(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
          color: Colors.white,
          width: double.infinity,
          height: 80,
          child: FilledButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SeulScreen5()));
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

