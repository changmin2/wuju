// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'join_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JoinResponseModel _$JoinResponseModelFromJson(Map<String, dynamic> json) =>
    JoinResponseModel(
      ERROR_CD: json['ERROR_CD'] as String,
      RESULT_DATA:
          UserModel.fromJson(json['RESULT_DATA'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JoinResponseModelToJson(JoinResponseModel instance) =>
    <String, dynamic>{
      'ERROR_CD': instance.ERROR_CD,
      'RESULT_DATA': instance.RESULT_DATA,
    };
