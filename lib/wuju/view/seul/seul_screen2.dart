import 'package:flutter/material.dart';

class SeulScreen2 extends StatelessWidget {
  const SeulScreen2({Key? key}) : super(key: key);

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
                      child: Text('학생의 연령/학년을\n선택해 주세요.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30)),
                    ),
                    Row(
                        //TextSpan 써보기
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text('2',
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w700)),
                          Text('/6', style: TextStyle(fontSize: 30)),
                        ])
                  ],
                ),
                Expanded(
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SizedBox(
                          width: double.infinity,
                          height: 55,
                          child: OutlinedButton(
                            onPressed: () {
                            },
                            child: Text('사회인',style: TextStyle(color: Colors.black,fontSize: 18),),
                          )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text('대학생',style: TextStyle(color: Colors.black,fontSize: 18),),
                            )
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text('고등학생',style: TextStyle(color: Colors.black,fontSize: 18),),
                            )
                          )
                      )
                    ],
                  ),
                )),

              ])),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.white,
        width: double.infinity,
        height: 80,
          child: FilledButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SeulScreen2())
              );
            },
            child: Text('다음', style: TextStyle(fontSize: 22)),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color(0xff12887A)), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),
          ),
      )
    );

  }
}
