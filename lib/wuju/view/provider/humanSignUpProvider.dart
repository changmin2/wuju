import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final humanProvider = ChangeNotifierProvider<Human>((ref){
  return Human();
});

class Human extends ChangeNotifier{
  String? name;
  String? password;
  String? nickname;

  void first(String name,String password, String nickname){
    this.name = name;
    this.password = password;
    this.nickname = nickname;
    notifyListeners();
  }
}