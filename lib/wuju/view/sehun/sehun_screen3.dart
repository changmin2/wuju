import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/sehun/sehun_screen4.dart';

class SehunScreen3 extends ConsumerStatefulWidget {
  const SehunScreen3({super.key});

  @override
  ConsumerState<SehunScreen3> createState() => _SehunScreen3State();
}

class _SehunScreen3State extends ConsumerState<SehunScreen3> {
  var langauge = ['영어','일어','독일어','프랑스어','스페인어'];
  var btnClick = [false,false,false,false,false];
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
                          '가능한 외국어를\n선택해주세요.',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          '4 / 6',
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
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            alignment: Alignment.centerLeft,
                            backgroundColor: btnClick[0]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              for(int i = 0; i < 5; i++){
                                if(i == 0) {
                                  btnClick[0] = !btnClick[0];
                                }
                                else{
                                  btnClick[i] = false;
                                }
                              }
                            });
                          },
                          child: Text(
                            '영어',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            alignment: Alignment.centerLeft,
                            backgroundColor: btnClick[1]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              for(int i = 0; i < 5; i++){
                                if(i == 1) {
                                  btnClick[1] = !btnClick[1];
                                }
                                else{
                                  btnClick[i] = false;
                                }
                              }
                            });
                          },
                          child: Text(
                            '일어',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            alignment: Alignment.centerLeft,
                            backgroundColor: btnClick[2]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              for(int i = 0; i < 5; i++){
                                if(i == 2) {
                                  btnClick[2] = !btnClick[2];
                                }
                                else{
                                  btnClick[i] = false;
                                }
                              }
                            });
                          },
                          child: Text(
                            '독일어',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            alignment: Alignment.centerLeft,
                            backgroundColor: btnClick[3]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              for(int i = 0; i < 5; i++){
                                if(i == 3) {
                                  btnClick[3] = !btnClick[3];
                                }
                                else{
                                  btnClick[i] = false;
                                }
                              }
                            });
                          },
                          child: Text(
                            '프랑스어',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            alignment: Alignment.centerLeft,
                            backgroundColor: btnClick[4]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              for(int i = 0; i < 5; i++){
                                if(i == 4) {
                                  btnClick[4] = !btnClick[4];
                                }
                                else{
                                  btnClick[i] = false;
                                }
                              }
                            });
                          },
                          child: Text(
                            '스페인어',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        )
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
                var possible = btnClick.map((e) => e ? langauge[btnClick.indexOf(e)] : null);
                possible = possible.where((element) => element != null).toList();
                if(possible.length < 1){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('가능한 언어를 1개 이상 선택하세요!'),
                        duration: Duration(seconds: 3),
                      )
                  );
                }else {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SehunScreen4())
                  );
                }
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
