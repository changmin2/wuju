import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/provider/alienSignUpProvider.dart';
import 'package:wuju/wuju/view/sehun/sehun_screen2.dart';
class SehunScreen1 extends ConsumerStatefulWidget {
  const SehunScreen1({super.key});

  @override
  ConsumerState<SehunScreen1> createState() => _SehunScreen1State();
}

class _SehunScreen1State extends ConsumerState<SehunScreen1> {

  bool btnClick1 = false;
  bool btnClick2 = false;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(alienProvider);

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
                          '성별을\n선택해 주세요.',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      Container(
                        child: Text(
                          '2 / 6',
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
                        height: 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            backgroundColor: btnClick1? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick1 = !btnClick1;
                              btnClick2 = !btnClick1;
                            });
                          },
                          child: Text(
                            '남자',
                            style: TextStyle(color: Colors.black,fontSize: 30),
                          ),
                        )
                    ),
                    Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                        width: double.infinity,
                        height: 80,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 40),
                            backgroundColor: btnClick2? Color(0xff12887A) : Colors.white,
                            side: BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          onPressed: (){
                            setState(() {
                              btnClick2 = !btnClick2;
                              btnClick1 = !btnClick2;
                            });
                          },
                          child: Text(
                            '여자',
                            style: TextStyle(color: Colors.black,fontSize: 30),
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
                if(!btnClick1 && !btnClick2) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('성별을 선택하세요!'),
                        duration: Duration(seconds: 3),
                      )
                  );
                }else{
                  ref.read(alienProvider.notifier).second(btnClick1 ? "남자" : "여자");
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SehunScreen2())
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
