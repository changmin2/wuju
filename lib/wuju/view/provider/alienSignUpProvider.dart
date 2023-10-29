import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  List<String>? possibleLanguage;
  String? introduce;
  List<String>? possibleDay;
  TimeOfDay? startTime;
  TimeOfDay? endTime;

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

  void fourth(List<String> la){
    this.possibleLanguage = la;
  }

  void fifth(List<String> day,TimeOfDay start,TimeOfDay end){
    this.possibleDay = day;
    this.startTime = start;
    this.endTime = end;
  }

  void sixth(String intro){
    this.introduce = intro;
  }

  void init(){
    this.name = '';
    this.password = '';
    this.nickname = '';
  }
}