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
  String username = '';
  String password = '';

  final _idFormKey = GlobalKey<FormState>();
  final _psFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        // physics : 스크롤의 특성을 변경
        // NeverScrollableScrollPhysics : 스크롤이 되지 않게 함.
        // BouncingScrollPhysics : 안드로이드 스크롤의 기본 세팅으로 스크롤의 시작과 끝에 도달하면 튕기는 효과를 보여줌.
        // ClampingScrollPhysics : IOS 스크롤의 기본 세팅으로 스크롤의 끝에서 도달하면 튕기는 효과를 보여줌.
        physics: ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 350,
                    child: Image.asset('asset/img/login.png'),
                  ),
                  Form(
                    key: _idFormKey,
                    child: TextFormField(
                      onChanged: (String value) {
                        username = value;
                      },
                      validator: (value) {
                        if (value!.length < 1) {
                          return "아이디를 입력해주세요.";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: '아이디(영어로, 4자이상, 10자이내)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Form(
                    key: _psFormKey,
                    child: TextFormField(
                      onChanged: (String value) {
                        password = value;
                      },
                      validator: (value) {
                        if (value!.length < 1) {
                          return "비밀번호를 입력해주세요.";
                        }
                      },
                      decoration: InputDecoration(
                        hintText: '비밀번호(영어로, 4자이상, 10자이내)',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                height: 50,
                margin: EdgeInsets.only(bottom: 16),
                child: ElevatedButton(
                  onPressed: () async {
                    if (_idFormKey.currentState!.validate() &&
                        _psFormKey.currentState!.validate()) {
                      await ref
                          .read(userMeProvider.notifier)
                          .login(username: username, password: password);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff12887A)),
                  child: Text(
                    '로그인',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
