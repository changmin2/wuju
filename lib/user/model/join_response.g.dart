// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinResponseModel _$JoinResponseModelFromJson(Map<String, dynamic> json) =>
    JoinResponseModel(
      ERROR_CD: json['ERROR_CD'] as String,
      USER_INFO: UserModel.fromJson(json['USER_INFO'] as Map<String, dynamic>),
      USER_SESSION: json['USER_SESSION'] as String? ?? "",
    );

Map<String, dynamic> _$JoinResponseModelToJson(JoinResponseModel instance) =>
    <String, dynamic>{
      'ERROR_CD': instance.ERROR_CD,
      'USER_INFO': instance.USER_INFO,
      'USER_SESSION': instance.USER_SESSION,
    };
