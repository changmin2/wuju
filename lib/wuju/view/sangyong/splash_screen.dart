import 'package:flutter/material.dart';
import 'package:wuju/common/layout/default_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Center(
        child: Image.asset("asset/img/splash_image.png"),
      ),
    );
  }
}
