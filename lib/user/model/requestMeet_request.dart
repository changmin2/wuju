import 'package:json_annotation/json_annotation.dart';

part 'requestMeet_request.g.dart';

@JsonSerializable()
class RequestMeetRequest{
  final String path;
  final String earthling_id;
  final String alien_id;

  RequestMeetRequest({
    required this.path,
    required this.earthling_id,
    required this.alien_id
  });

  factory RequestMeetRequest.fromJson(Map<String,dynamic> json)
  => _$RequestMeetRequestFromJson(json);

  Map<String,dynamic> toJson() => _$RequestMeetRequestToJson(this);
}