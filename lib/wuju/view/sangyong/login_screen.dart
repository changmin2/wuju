import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';
import 'package:wuju/wuju/view/sangyong/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'asset/img/splash.png',
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                fit: BoxFit.cover,
              ),
            ),
            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '아이디',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 16),

            Form(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: '비밀번호',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),

            SizedBox(height: 32),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff12887A),
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                '로그인',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
