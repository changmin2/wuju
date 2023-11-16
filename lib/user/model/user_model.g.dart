// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      user_dv: json['user_dv'] as String,
      user_id: json['user_id'] as String,
      nick_name: json['nick_name'] as String,
      sex: json['sex'] as String,
      address_1: json['address_1'] as String,
      address_2: json['address_2'] as String,
      address_3: json['address_3'] as String,
      user_intro: json['user_intro'] as String,
      start_time: json['start_time'] as String,
      end_time: json['end_time'] as String,
      identi: json['identi'] as String,
      USER_SKILL: (json['USER_SKILL'] as List<dynamic>)
          .map((e) => Skill.fromJson(e as Map<String, dynamic>))
          .toList(),
      USER_WEEK: (json['USER_WEEK'] as List<dynamic>)
          .map((e) => Week.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'user_dv': instance.user_dv,
      'user_id': instance.user_id,
      'nick_name': instance.nick_name,
      'sex': instance.sex,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'address_3': instance.address_3,
      'user_intro': instance.user_intro,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'identi': instance.identi,
      'USER_SKILL': instance.USER_SKILL,
      'USER_WEEK': instance.USER_WEEK,
    };

Skill _$SkillFromJson(Map<String, dynamic> json) => Skill(
      skill: json['skill'] as String,
    );

Map<String, dynamic> _$SkillToJson(Skill instance) => <String, dynamic>{
      'skill': instance.skill,
    };

Week _$WeekFromJson(Map<String, dynamic> json) => Week(
      week: json['week'] as String,
    );

Map<String, dynamic> _$WeekToJson(Week instance) => <String, dynamic>{
      'week': instance.week,
    };
