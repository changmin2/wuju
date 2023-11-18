import 'package:json_annotation/json_annotation.dart';

part 'join_request.g.dart';

@JsonSerializable()
class JoinRequest{
  //1: 외계인, 2: 지구인
  final String user_dv;
  final String user_id;
  final String passowrd;
  final String nick_name;
  String? sex;
  final String address_1;
  final String address_2;
  final String address_3;
  final String user_intro;
  final String start_time;
  final String end_time;
  final List<String> skill;
  final List<String> week;
  String? identity;

  JoinRequest({
    required this.user_dv,
    required this.user_id,
    required this.passowrd,
    required this.nick_name,
    required this.address_1,
    required this.address_2,
    required this.address_3,
    required this.user_intro,
    required this.start_time,
    required this.end_time,
    required this.skill,
    required this.week,
    this.sex = "",
    this.identity = ""
  });

  factory JoinRequest.fromJson(Map<String, dynamic> json)
  => _$JoinRequestFromJson(json);

  Map<String, dynamic> toJson()
  => _$JoinRequestToJson(this);

}