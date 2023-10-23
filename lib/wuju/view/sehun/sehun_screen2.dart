import 'package:flutter/material.dart';

class SehunScreen2 extends StatelessWidget {
  const SehunScreen2({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '시/도',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '시/군/구',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '읍/동/면',
                            border: OutlineInputBorder()),
                      ),
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
            onPressed: (){},
            child: Text(
              '다음',
              style: TextStyle(fontSize: 30),
            ),
          )
      )
    );
  }
}
