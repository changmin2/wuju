import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/common/layout/default_layout.dart';
import 'package:wuju/user/provider/user_me_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static String get routeName => 'doLogin';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  String username ='';
  String password ='';

  final _idFormKey = GlobalKey<FormState>();
  final _psFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                height: 350,
                child: Image.asset('asset/img/login.png')),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              width: double.infinity,
              height: 80,
              child: Form(
                key: _idFormKey,
                child: TextFormField(
                  onChanged: (String value){
                    username = value;
                  },
                  validator: (value){
                    if(value!.length<1){
                      return "아이디를 입력해주세요.";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: '아이디(영어로, 4자이상, 10자이내)',
                      border: OutlineInputBorder(),

                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
              width: double.infinity,
              height: 80,
              child: Form(
                key: _psFormKey,
                child: TextFormField(
                  onChanged: (String value){
                    password = value;
                  },
                  validator: (value){
                    if(value!.length<1){
                      return "비밀번호를 입력해주세요.";
                    }
                  },
                  decoration: InputDecoration(
                    hintText: '비밀번호(영어로, 4자이상, 10자이내)',
                    border: OutlineInputBorder(),

                  ),
                ),
              ),
            ),
        SizedBox(height: 16,),
        Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
                onPressed: ()async{
                  if(_idFormKey.currentState!.validate() && _psFormKey.currentState!.validate()){
                    await ref.read(userMeProvider.notifier)
                        .login(username: username, password: password);
                  }

                },
                child: Text(
                  '로그인',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 25
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff12887A)
                ),
            ),
          ),
        )

            // child: ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //       minimumSize: Size(350, 40),
            //       backgroundColor: Color(0xff12887A)
            //   ),

          ],
        ),
      ),

    );
  }
}
