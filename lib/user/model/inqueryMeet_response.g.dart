// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inqueryMeet_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InqueryMeetResponse _$InqueryMeetResponseFromJson(Map<String, dynamic> json) =>
    InqueryMeetResponse(
      A2E_LIST: (json['A2E_LIST'] as List<dynamic>)
          .map((e) => UserModelV2.fromJson(e as Map<String, dynamic>))
          .toList(),
      E2A_LIST: (json['E2A_LIST'] as List<dynamic>)
          .map((e) => UserModelV2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InqueryMeetResponseToJson(
        InqueryMeetResponse instance) =>
    <String, dynamic>{
      'A2E_LIST': instance.A2E_LIST,
      'E2A_LIST': instance.E2A_LIST,
    };
