import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/sehun/sehun_screen3.dart';

class SehunScreen2 extends StatefulWidget {
  const SehunScreen2({super.key});

  @override
  State<SehunScreen2> createState() => _SehunScreen2State();
}

class _SehunScreen2State extends State<SehunScreen2> {
  final _si = ['서울', '부산', '대구'];
  final _gun = ['1군', '2군', '3군'];
  final _gu = ['금정구', '동래구', '진구'];
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
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: (){
                Navigator.pop(context);
              }
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: double.infinity,
                  height: 200,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(
                          '만남 가능한 지역을\n선택해주세요.',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          '3 / 6',
                          style: TextStyle(fontSize: 50),
                        ),
                      )
                    ],
                  )
              ),
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                      child: DropdownButton(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          style: TextStyle(
                              fontSize: 18, color: Colors.black),
                          hint: Text('시 / 도'),
                          value: si,
                          items: _si.map((v) {
                            return DropdownMenuItem(
                                value: v, child: Text(v));
                          }).toList(),
                          onChanged: (v) {
                            setState(() {
                              si = v;
                            });
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                      child: DropdownButton(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          style: TextStyle(
                              fontSize: 18, color: Colors.black),
                          hint: Text('시 / 군 / 구'),
                          value: gun,
                          items: _gun.map((v) {
                            return DropdownMenuItem(
                                value: v, child: Text(v));
                          }).toList(),
                          onChanged: (v) {
                            setState(() {
                              gun = v;
                            });
                          }),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      width: double.infinity,
                      height: 80,
                      decoration: BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
                      child: DropdownButton(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          isExpanded: true,
                          icon: Icon(Icons.keyboard_arrow_down),
                          style: TextStyle(
                              fontSize: 18, color: Colors.black),
                          hint: Text('읍 / 동 / 면'),
                          value: gu,
                          items: _gu.map((v) {
                            return DropdownMenuItem(
                                value: v, child: Text(v));
                          }).toList(),
                          onChanged: (v) {
                            setState(() {
                              gu = v;
                            });
                          }),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
            alignment: Alignment.center,
            width: double.infinity,
            height: 100,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 40),
                  backgroundColor: Color(0xff12887A)
              ),
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SehunScreen3())
                );
              },
              child: Text(
                '다음',
                style: TextStyle(fontSize: 30),
              ),
            )
        )
    );
  }
}

