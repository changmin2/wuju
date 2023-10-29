import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/provider/alienSignUpProvider.dart';
import 'package:wuju/wuju/view/sehun/sehun_screen5.dart';

class SehunScreen4 extends ConsumerStatefulWidget {
  const SehunScreen4({super.key});

  @override
  ConsumerState<SehunScreen4> createState() => _SehunScreen4State();
}

class _SehunScreen4State extends ConsumerState<SehunScreen4> {
  var day = ['월','화','수','목','금','토','일'];
  var btnClick = [false, false, false, false, false, false, false];
  TimeOfDay startTime = TimeOfDay(hour: 12, minute: 00);
  bool clickStartTime = false;
  TimeOfDay endTime = TimeOfDay(hour: 6, minute: 00);
  bool clickEndTime = false;

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
                          '가능한 요일 / 시간을\n입력해주세요.',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          '5 / 6',
                          style: TextStyle(fontSize: 50),
                        ),
                      )
                    ],
                  )
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0,0,0,50),
                width: double.infinity,
                height: 50,
                child: ListView(
                  padding: EdgeInsets.fromLTRB(20,0,0,0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[0]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[0] = !btnClick[0];
                            });
                          },
                          child: Text(
                            '월',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[1]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[1] = !btnClick[1];
                            });
                          },
                          child: Text(
                            '화',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[2]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[2] = !btnClick[2];
                            });
                          },
                          child: Text(
                            '수',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[3]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[3] = !btnClick[3];
                            });
                          },
                          child: Text(
                            '목',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[4]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[4] = !btnClick[4];
                            });
                          },
                          child: Text(
                            '금',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[5]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[5] = !btnClick[5];
                            });
                          },
                          child: Text(
                            '토',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),

                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                        width: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.zero,
                            backgroundColor: btnClick[6]? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick[6] = !btnClick[6];
                            });
                          },
                          child: Text(
                            '일',
                            style: TextStyle(color: Colors.black,fontSize: 25),
                          ),
                        )
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 40),
                  backgroundColor:Colors.white,
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
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
                child: clickStartTime?
                Text(
                    "${startTime.hour}시 ${startTime.minute}분",
                    style: TextStyle(fontSize: 18, color: Colors.black)) :
                Text("시작시간", style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 40),
                  backgroundColor:Colors.white,
                  side: BorderSide(
                    color: Colors.black,
                  ),
                ),
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
                child: clickEndTime?
                Text(
                    "${endTime.hour}시 ${endTime.minute}분",
                    style: TextStyle(fontSize: 18, color: Colors.black)) :
                Text("종료시간", style: TextStyle(fontSize: 18, color: Colors.black)),
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
                List<String> poDay = [];
                var po = btnClick.map((e) => e ? day[btnClick.indexOf(e)].toString(): null).toList();
                po = po.where((element) => element != null).toList();
                po.forEach((element) {
                  poDay.add(element!);
                });

                if(poDay.length < 1){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('가능한 요일 1개 이상 선택하세요!'),
                        duration: Duration(seconds: 3),
                      )
                  );
                }else if(!clickStartTime || !clickEndTime){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('시간을 선택하세요!'),
                        duration: Duration(seconds: 3),
                      )
                  );
                }else{
                  ref.read(alienProvider.notifier).fifth(poDay,startTime,endTime);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SehunScreen5())
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
