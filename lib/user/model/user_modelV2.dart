import 'package:json_annotation/json_annotation.dart';

part 'user_modelV2.g.dart';

@JsonSerializable()
class UserModelV2{
  final String user_dv;
  final String user_id;
  final String nick_name;
  final String sex;
  final String address_1;
  final String address_2;
  final String address_3;
  final String user_intro;
  final String start_time;
  final String end_time;
  final String path;
  final String req_time;

  UserModelV2({
    required this.user_dv,
    required this.user_id,
    required this.nick_name,
    required this.sex,
    required this.address_1,
    required this.address_2,
    required this.address_3,
    required this.user_intro,
    required this.start_time,
    required this.end_time,
    required this.path,
    required this.req_time
  });

  factory UserModelV2.fromJson(Map<String,dynamic> json)
  => _$UserModelV2FromJson(json);
}