import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:retrofit/http.dart';
import 'package:wuju/common/dio/dio.dart';
import 'package:wuju/user/model/confirmMeet_request.dart';
import 'package:wuju/user/model/inqueryMeet_response.dart';
import 'package:wuju/user/model/join_request.dart';
import 'package:wuju/user/model/join_response.dart';
import 'package:wuju/user/model/requestMeet_request.dart';
import 'package:wuju/user/model/requestMeet_response.dart';
import 'package:wuju/user/model/user_model.dart';

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
  Future<JoinResponseModel> join(
    @Body() JoinRequest joinRequest
  );

  @GET('/todayAlien')
  Future<Map<String,List<UserModel>>> todayAlien();

  @GET('/todayEarthling')
  Future<Map<String,List<UserModel>>>todayEarthling();

  @POST('/requestMeet')
  Future<RequestMeetResponse>requestMeet(
    @Body() RequestMeetRequest request
  );
  
  @POST('/inqueryMeet')
  Future<InqueryMeetResponse> inqueryMeet(
    @Body() String user_id
  );

  @POST('/confirmMeet')
  Future<String> confirmMeet(
    @Body() ConfirmMeetRequest request
  );
}