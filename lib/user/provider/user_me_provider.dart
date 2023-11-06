import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user_model.dart';

final userMeProvider = StateNotifierProvider<UserMeStateNotifier,UserModelBase?>((ref) {


  return UserMeStateNotifier();
});

class UserMeStateNotifier extends StateNotifier<UserModelBase?>{

  UserMeStateNotifier() : super(UserModelLoading()) {
    get();
  }

  Future<void> get() async{
    //spalsh화면을 2초 보여주기 위한 스탑워치
    await Future.delayed(Duration(milliseconds: 1800));
    state = null;
    return;
  }

  Future<void> getMe(UserModel userModel) async {
    state = userModel;
  }

}