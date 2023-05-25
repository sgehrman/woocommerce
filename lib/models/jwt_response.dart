import 'package:json_annotation/json_annotation.dart';

part 'jwt_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooJWTResponse {
  String? token;
  String? userEmail;
  String? userNicename;
  String? userDisplayName;

  WooJWTResponse({
    this.token,
    this.userEmail,
    this.userNicename,
    this.userDisplayName,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooJWTResponse.fromJson(Map<String, dynamic> json) =>
      _$WooJWTResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WooJWTResponseToJson(this);
}
