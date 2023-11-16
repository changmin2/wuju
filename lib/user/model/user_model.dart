import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

abstract class UserModelBase{}

class UserModelError extends UserModelBase{
  final String message;

  UserModelError({
    required this.message
  });
}

class UserModelLoading extends UserModelBase{}

@JsonSerializable()
class UserModel extends UserModelBase{
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
  final String identi;
  final List<Skill> USER_SKILL;
  final List<Week> USER_WEEK;

  UserModel({
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
    required this.identi,
    required this.USER_SKILL,
    required this.USER_WEEK
  });


  factory UserModel.fromJson(Map<String,dynamic> json)
  => _$UserModelFromJson(json);

}

@JsonSerializable()
class Skill{
  final String skill;

  Skill({
    required this.skill
  });

  factory Skill.fromJson(Map<String,dynamic> json)
  => _$SkillFromJson(json);
}

@JsonSerializable()
class Week{
  final String week;

  Week({
    required this.week
  });

  factory Week.fromJson(Map<String,dynamic> json)
  => _$WeekFromJson(json);
}