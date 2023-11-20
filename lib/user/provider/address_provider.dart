import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final addressNotiferProvider = ChangeNotifierProvider<AddressNotifier>(
    (ref){
      return AddressNotifier();
    }
);

class AddressNotifier extends ChangeNotifier{
  String address_1 = '';
  String address_2 = '';
  String address_3 = '';

  void first(String address){
    this.address_1 = address;
    this.address_2 = '';
    this.address_3 = '';
    notifyListeners();
  }

  void second(String address){
    this.address_2 = address;
    this.address_3 = '';
    notifyListeners();
  }
  void third(String address){
    this.address_3 = address;
    notifyListeners();
  }

  bool check(){
    if(address_3!=''){
      return true;
    }
    return false;
  }

  void clear(){
    this.address_1 = '';
    this.address_2 = '';
    this.address_3 = '';
  }
}