import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final alienProvider = ChangeNotifierProvider<Alien>((ref){
  return Alien();
});

class Alien extends ChangeNotifier{
  String? name;
  String? password;
  String? nickname;
  String? gender;
  String? si;
  String? gun;
  String? gu;

  void first(String name,String password, String nickname){
    this.name = name;
    this.password = password;
    this.nickname = nickname;
    notifyListeners();
  }

  void second(String gender){
    this.gender = gender;
    notifyListeners();
  }

  void thrid(String si,String gun,String gu){
    this.si = si;
    this.gun = gun;
    this.gu = gu;
    notifyListeners();
  }

  void init(){
    this.name = '';
    this.password = '';
    this.nickname = '';
  }
}