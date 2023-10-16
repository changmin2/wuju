import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';
import 'package:wuju/wuju/view/changmin/changmin_screen.dart';
import 'package:wuju/wuju/view/sangyong/signup_screen.dart';

void main() {
  runApp(
      MaterialApp(
        home: _WujuApp(),
      )
  );
}

class _WujuApp extends StatelessWidget {
  const _WujuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultLayout(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangminScreen())
                    );
                  },
                  child: Text('창민')
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangminScreen())
                    );
                  },
                  child: Text('세헌')
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChangminScreen())
                    );
                  },
                  child: Text('진슬')
              ),
              SizedBox(height: 30),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingUpScreen())
                    );
                  },
                  child: Text('상용')
              )
            ],
          ),
        ),
      ),
    );
  }
}
