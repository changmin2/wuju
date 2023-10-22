import 'package:flutter/material.dart';

class SehunScreen extends StatelessWidget {
  const SehunScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: (){}
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(

              width: double.infinity,
              height: 100,
              child: GridView.count(
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '아이디, 비밀번호, 닉네임을 입력해주세요.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Text(
                        '1 / 6',
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  ],
              )
            ),
            Container(

              width: double.infinity,
              height: 300,
            ),
            Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(270, 40),
                      backgroundColor: Colors.green
                  ),
                  onPressed: (){},
                  child: Text(
                    '다음',
                    style: TextStyle(fontSize: 30),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}
