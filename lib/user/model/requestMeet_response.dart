import 'package:json_annotation/json_annotation.dart';

part 'requestMeet_response.g.dart';

@JsonSerializable()
class RequestMeetResponse{
  String ERROR_CD;
  String ERROR_MSG;

  RequestMeetResponse({
    required this.ERROR_CD,
    required this.ERROR_MSG
  });

  factory RequestMeetResponse.fromJson(Map<String,dynamic> json)
  => _$RequestMeetResponseFromJson(json);

  Map<String,dynamic> toJson() => _$RequestMeetResponseToJson(this);
}