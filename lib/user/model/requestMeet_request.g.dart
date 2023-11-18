// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requestMeet_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestMeetRequest _$RequestMeetRequestFromJson(Map<String, dynamic> json) =>
    RequestMeetRequest(
      path: json['path'] as String,
      earthling_id: json['earthling_id'] as String,
      alien_id: json['alien_id'] as String,
    );

Map<String, dynamic> _$RequestMeetRequestToJson(RequestMeetRequest instance) =>
    <String, dynamic>{
      'path': instance.path,
      'earthling_id': instance.earthling_id,
      'alien_id': instance.alien_id,
    };
