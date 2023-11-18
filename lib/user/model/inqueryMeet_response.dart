import 'package:json_annotation/json_annotation.dart';
import 'package:wuju/user/model/user_model.dart';

part 'inqueryMeet_response.g.dart';

@JsonSerializable()
class InqueryMeetResponse{
  final List<UserModel> A2E_LIST;
  final List<UserModel> E2A_LIST;

  InqueryMeetResponse({
    required this.A2E_LIST,
    required this.E2A_LIST
  });

  factory InqueryMeetResponse.fromJson(Map<String, dynamic> json)
  => _$InqueryMeetResponseFromJson(json);

  Map<String, dynamic> toJson()
  => _$InqueryMeetResponseToJson(this);
}