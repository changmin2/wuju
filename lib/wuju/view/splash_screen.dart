import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class SplashScreen extends ConsumerWidget {
  static String get routeName => 'splash';


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    print('splash진입');
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
                      'asset/img/splash.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
      ),
    );
  }
}
