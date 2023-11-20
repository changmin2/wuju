import 'package:json_annotation/json_annotation.dart';

part 'humanListRequest.g.dart';

@JsonSerializable()
class HumanListRequest{
  String address_1;
  String address_2;
  String address_3;
  String user_dv;

  HumanListRequest({
    required this.address_1,
    required this.address_2,
    required this.address_3,
    required this.user_dv
  });

  factory HumanListRequest.fromJson(Map<String, dynamic> json)
  => _$HumanListRequestFromJson(json);

  Map<String, dynamic> toJson()
  => _$HumanListRequestToJson(this);
}