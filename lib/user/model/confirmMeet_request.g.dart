// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmMeet_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmMeetRequest _$ConfirmMeetRequestFromJson(Map<String, dynamic> json) =>
    ConfirmMeetRequest(
      path: json['path'] as String,
      decision_dv: json['decision_dv'] as String,
      earthling_id: json['earthling_id'] as String,
      alien_id: json['alien_id'] as String,
    );

Map<String, dynamic> _$ConfirmMeetRequestToJson(ConfirmMeetRequest instance) =>
    <String, dynamic>{
      'path': instance.path,
      'decision_dv': instance.decision_dv,
      'earthling_id': instance.earthling_id,
      'alien_id': instance.alien_id,
    };
