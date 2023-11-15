import 'package:json_annotation/json_annotation.dart';
import 'package:wuju/user/model/user_model.dart';

part 'join_response.g.dart';

@JsonSerializable()
class JoinResponseModel{
  final String ERROR_CD;
  final UserModel USER_INFO;
  String? USER_SESSION;

  JoinResponseModel({
     required this.ERROR_CD,
     required this.USER_INFO,
     this.USER_SESSION = ""
  });

  factory JoinResponseModel.fromJson(Map<String,dynamic> json)
  => _$JoinResponseModelFromJson(json);

  Map<String,dynamic> toJson() => _$JoinResponseModelToJson(this);
}