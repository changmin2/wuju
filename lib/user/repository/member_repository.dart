import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:wuju/common/dio/dio.dart';
import 'package:wuju/user/model/join_request.dart';

import '../../common/const/data.dart';

part 'member_repository.g.dart';

final memberRepositoryProvider = Provider((ref){
  final dio = ref.watch(dioProvider);
  
  return MemberRepository(dio,baseUrl: 'http://$ip/');
});

@RestApi()
abstract class MemberRepository{
  factory MemberRepository(Dio dio,{String baseUrl}) = _MemberRepository;
  
  @POST('/joinMembership')
  Future<void> join(
    @Body() JoinRequest joinRequest
  );
}