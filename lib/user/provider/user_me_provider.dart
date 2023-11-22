import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/user_model.dart';
import '../repository/auth_repository.dart';

final userMeProvider = StateNotifierProvider<UserMeStateNotifier,UserModelBase?>((ref) {
  final authRepository = ref.watch(authRepositoryProivder);

  return UserMeStateNotifier(
    authRepository: authRepository
  );
});

class UserMeStateNotifier extends StateNotifier<UserModelBase?>{
  final AuthRepository authRepository;
  UserMeStateNotifier({
    required this.authRepository
  }) : super(UserModelLoading()) {
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

  Future<UserModelBase> login({
    required String username,
    required String password,
  }) async{
    try{
      state = UserModelLoading();
      final resp = await authRepository.login(username: username, password: password);
      state = resp.USER_INFO;
      return state as UserModel;
    }catch(e) {
      state = UserModelError(message: '로그인에 실패했습니다.');

      return Future.value(state);
    }
  }



}