import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/seul/seul_screen3.dart';
import 'package:wuju/wuju/view/seul/seul_screen4.dart';

class SeulScreen3 extends StatefulWidget {
  const SeulScreen3({super.key});

  @override
  State<SeulScreen3> createState() => _SeulScreen3State();
}

class _SeulScreen3State extends State<SeulScreen3> {
  final _siList = ['시1', '시2', '시3', '시4', '시5'];
  final _gunList = ['군1', '군2', '군3', '군4', '군5'];
  final _guList = ['구1', '구2', '구3', '구4', '구5'];
  var si = null;
  var gun = null;
  var gu = null;
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
                        child: Text('거주하는 지역을\n선택해 주세요.',
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 30)),
                      ),
                      Row(
                          //TextSpan 써보기
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text('3',
                                style: TextStyle(
                                    fontSize: 50, fontWeight: FontWeight.w700)),
                            Text('/6', style: TextStyle(fontSize: 30)),
                          ])
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                      children: [
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: InputDecorator(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(
                                        0xffadadad))),
                                    contentPadding: EdgeInsets.all(5)),
                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: DropdownButton(
                                        isExpanded: true,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                        hint: Text('시 / 도'),
                                        value: si,
                                        items: _siList.map((v) {
                                          return DropdownMenuItem(
                                              value: v, child: Text(v));
                                        }).toList(),
                                        onChanged: (v) {
                                          setState(() {
                                            si = v;
                                          });
                                        }),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: InputDecorator(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(
                                        0xffadadad))),
                                    contentPadding: EdgeInsets.all(5)),
                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: DropdownButton(
                                        isExpanded: true,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                        hint: Text('시 / 군 / 구'),
                                        value: gun,
                                        items: _gunList.map((v) {
                                          return DropdownMenuItem(
                                              value: v, child: Text(v));
                                        }).toList(),
                                        onChanged: (v) {
                                          setState(() {
                                            gun = v;
                                          });
                                        }),
                                  ),
                                ))),
                        Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                            child: InputDecorator(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(
                                        0xffadadad))),
                                    contentPadding: EdgeInsets.all(5)),
                                child: DropdownButtonHideUnderline(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 10),
                                    child: DropdownButton(
                                        isExpanded: true,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        style: TextStyle(
                                            fontSize: 18, color: Colors.black),
                                        hint: Text('읍 / 동 / 면'),
                                        value: gu,
                                        items: _guList.map((v) {
                                          return DropdownMenuItem(
                                              value: v, child: Text(v));
                                        }).toList(),
                                        onChanged: (v) {
                                          setState(() {
                                            gu = v;
                                          });
                                        }),
                                  ),
                                ))),
                      ],
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
                  MaterialPageRoute(builder: (context) => SeulScreen4()));
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
