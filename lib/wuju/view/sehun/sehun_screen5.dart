import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/sangyong/home_screen.dart';

import '../provider/alienSignUpProvider.dart';

class SehunScreen5 extends ConsumerWidget {
  const SehunScreen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    String? intro = '';
    final _introKey = GlobalKey<FormState>();

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
              padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '하고 싶은 말을\n적어주세요.',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      child: Text(
                        '6 / 6',
                        style: TextStyle(fontSize: 50),
                      ),
                    )
                  ],
              )
            ),
            Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                  child: Form(
                    key: _introKey,
                    child: TextFormField(
                      onChanged: (value){
                        intro = value;
                      },
                      validator: (value){
                        if(value!.length<1){
                          return "하고싶은 말을 입력해주세요";
                        }
                      },
                      style: TextStyle(fontSize: 18),
                      decoration: InputDecoration(
                          hintText: 'Ex) 선생님이라 생각하지 말고\n 편하게 대화했으면 좋겠습니다.',
                          border: OutlineInputBorder()),
                      keyboardType: TextInputType.multiline,
                      maxLines: 8,
                    ),
                  ),
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
              if(_introKey.currentState!.validate()){
                ref.read(alienProvider.notifier).sixth(intro!);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen())
                );
              }
            },
            child: Text(
              '완료',
              style: TextStyle(fontSize: 30),
            ),
          )
      )
    );
  }
}
