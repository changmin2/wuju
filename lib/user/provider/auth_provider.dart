import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:wuju/wuju/view/sangyong/home_screen.dart';
import 'package:wuju/wuju/view/sangyong/signup_screen.dart';

import '../../wuju/view/splash_screen.dart';
import '../model/user_model.dart';

final authProvider = ChangeNotifierProvider<AuthProviderNotifier>((ref) {
  return AuthProviderNotifier(ref: ref);
});

class AuthProviderNotifier extends ChangeNotifier{
  final Ref ref;

  AuthProviderNotifier({
    required this.ref
  }){
    // ref.listen<UserModelBase?>(userMeProvider, (previous, next) {
    //   if(previous!=next){
    //     notifyListeners();
    //   }
    // });
  }

  List<GoRoute> get routes => [
    GoRoute(
      path: '/',
      name: HomeScreen.routeName,
      builder: (_,__) => HomeScreen(),
    ),
    GoRoute(
        path: '/splash',
        name: SplashScreen.routeName,
        builder: (_,__) => SplashScreen()
    ),
    GoRoute(
        path: '/login',
        name: SignUpScreen.routeName,
        builder: (_,__) => SignUpScreen(),
    )
  ];


  //SplashScreen
  //앱을 처음 시작했을때
  //토큰이 존재하는지 확인하고
  //로그인 스크린으로 보내줄지
  //홈스크린으로 보내줄지 확인하는 과정이 필요
  FutureOr<String?> redirectLogic(BuildContext context,GoRouterState state)  {
    //final UserModelBase? user = ref.read(userMeProvider);
    //로그인 중
    // final logginIn = state.location == '/login';
    // //회원가입 페이지 이동중인지
    // final joinIn = state.location == '/login/join';
    // //유저 정보가 없는데
    // //로그인중이면 그대로 로그인 페이지에 두고
    // //만약 로그인중이 아니라면 로그인 페이지로 이동
    // if(user == null && !joinIn){
    //
    //   return logginIn ? null : '/login';
    // }
    //
    //
    // //user가 null이 아님
    //
    // //UserModel
    // //사용자 정보가 있는상태면
    // //로그인 중이거나 현재 위치가 SplashScreen이면
    // //홈으로 이동
    // if(user is UserModel){
    //   return logginIn || state.location == '/splash' ? '/' : null;
    // }
    //
    // //UserModelError
    // if(user is UserModelError){
    //   if(joinIn){
    //     return '/login/join';
    //   }
    //   return logginIn ? null : '/login';
    // }

    return state.location == '/splash' ? '/login' : null;
  }
}