import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wuju/user/model/join_response.dart';

import '../../common/const/data.dart';
import '../../common/dio/dio.dart';

final authRepositoryProivder = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);

  return AuthRepository(baseUrl: 'http://$ip', dio: dio);
});

class AuthRepository{
  final String baseUrl;
  final Dio dio;

  AuthRepository({
    required this.baseUrl,
    required this.dio
  });

  Future<JoinResponseModel> login({
    required String username,
    required String password,
  }) async {
    final resp = await dio.post(
        '$baseUrl/userLogin',
        data: {
          'user_id':username,
          'password':password
        }
    );

    return JoinResponseModel.fromJson(resp.data);
  }
}