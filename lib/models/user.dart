import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooUser {
  final int? id;
  final String? email;
  final String? username;
  final String? password;
  final String? firstName;
  final String? lastName;
  final String? name;

  WooUser({
    required String this.email,
    required String this.username,
    this.id,
    this.password,
    this.firstName,
    this.lastName,
    this.name,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooUser.fromJson(Map<String, dynamic> json) =>
      _$WooUserFromJson(json);

  Map<String, dynamic> toJson() => _$WooUserToJson(this);
}
