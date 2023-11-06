// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinRequest _$JoinRequestFromJson(Map<String, dynamic> json) => JoinRequest(
      user_dv: json['user_dv'] as String,
      user_id: json['user_id'] as String,
      passowrd: json['passowrd'] as String,
      nick_name: json['nick_name'] as String,
      sex: json['sex'] as String,
      address_1: json['address_1'] as String,
      address_2: json['address_2'] as String,
      address_3: json['address_3'] as String,
      user_intro: json['user_intro'] as String,
      start_time: json['start_time'] as String,
      end_time: json['end_time'] as String,
      skill: (json['skill'] as List<dynamic>).map((e) => e as String).toList(),
      week: (json['week'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$JoinRequestToJson(JoinRequest instance) =>
    <String, dynamic>{
      'user_dv': instance.user_dv,
      'user_id': instance.user_id,
      'passowrd': instance.passowrd,
      'nick_name': instance.nick_name,
      'sex': instance.sex,
      'address_1': instance.address_1,
      'address_2': instance.address_2,
      'address_3': instance.address_3,
      'user_intro': instance.user_intro,
      'start_time': instance.start_time,
      'end_time': instance.end_time,
      'skill': instance.skill,
      'week': instance.week,
    };
