import 'package:json_annotation/json_annotation.dart';

part 'confirmMeet_request.g.dart';

@JsonSerializable()
class ConfirmMeetRequest{
  final String path;
  final String decision_dv;
  final String earthling_id;
  final String alien_id;

  ConfirmMeetRequest({
    required this.path,
    required this.decision_dv,
    required this.earthling_id,
    required this.alien_id
  });

  factory ConfirmMeetRequest.fromJson(Map<String, dynamic> json)
  => _$ConfirmMeetRequestFromJson(json);

  Map<String, dynamic> toJson()
  => _$ConfirmMeetRequestToJson(this);
}