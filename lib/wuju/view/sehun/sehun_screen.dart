import 'package:flutter/material.dart';
import 'package:wuju/wuju/view/sehun/sehun_screen1.dart';

class SehunScreen extends StatelessWidget {
  const SehunScreen({Key? key}) : super(key: key);

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
                        '아이디, 비밀번호,\n닉네임을\n입력해주세요.',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      child: Text(
                        '1 / 6',
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
                            hintText: '아이디(영어로, 4자이상, 10자이내)',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '비밀번호(6자 이상)',
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
                      width: double.infinity,
                      height: 80,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: '닉네임(한글 가능함, 10자 이하)',
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
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SehunScreen1())
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
