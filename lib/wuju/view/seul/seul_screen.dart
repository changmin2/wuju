import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/wuju/view/provider/humanSignUpProvider.dart';
import 'package:wuju/wuju/view/seul/seul_screen2.dart';

class SeulScreen extends ConsumerStatefulWidget {

  const SeulScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SeulScreen> createState() => _SeulScreenState();
}

class _SeulScreenState extends ConsumerState<SeulScreen> {
  String username = '';
  String password = '';
  String nickname = '';

  final _usernameKey = GlobalKey<FormState>();
  final _passwordKey = GlobalKey<FormState>();
  final _nicknameKey = GlobalKey<FormState>();

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
                      child: Text('아이디, 비밀번호,\n닉네임을\n입력해주세요.',
                          textAlign: TextAlign.left,
                          style: TextStyle(fontSize: 30)),
                    ),
                    Row(
                        //TextSpan 써보기
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text('1',
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
                        child: Form(
                          key: _usernameKey,
                          child: TextFormField(
                            onChanged: (value){
                              this.username = value;
                            },
                            decoration: InputDecoration(
                                hintText: '아이디(영어로, 4자이상, 10자이내)',
                                border: OutlineInputBorder()),
                            validator: (value){
                              if(value!.length<1){
                                return "아이디를 입력해주세요.";
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Form(
                          key: _passwordKey,
                          child: TextFormField(
                            onChanged: (value){
                              this.password = value;
                            },
                            decoration: InputDecoration(
                                hintText: '비밀번호(6자 이상)',
                                border: OutlineInputBorder()),
                            validator: (value){
                              if(value!.length<1){
                                return "비밀번호를 입력해주세요.";
                              }
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: Form(
                          key: _nicknameKey,
                          child: TextFormField(
                            onChanged: (value){
                              this.nickname = value;
                            },
                            decoration: InputDecoration(
                                hintText: '닉네임(한글 가능함, 10자 이하)',
                                border: OutlineInputBorder()),
                            validator: (value){
                              if(value!.length<1){
                                return "닉네임을 입력해주세요.";
                              }
                            },
                          ),
                        ),
                      )
                    ],
                )),

              ])),
      bottomNavigationBar: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        color: Colors.white,
        width: double.infinity,
        height: 80,
          child: FilledButton(
            onPressed: () {
              if(_usernameKey.currentState!.validate() && _passwordKey.currentState!.validate()
                  && _nicknameKey.currentState!.validate()) {
                ref.read(humanProvider.notifier).first(
                    username, password, nickname);
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SeulScreen2())
                );
              }
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
