// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jwt_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooJWTResponse _$WooJWTResponseFromJson(Map<String, dynamic> json) =>
    WooJWTResponse(
      token: json['token'] as String?,
      userEmail: json['user_email'] as String?,
      userNicename: json['user_nicename'] as String?,
      userDisplayName: json['user_display_name'] as String?,
    );

Map<String, dynamic> _$WooJWTResponseToJson(WooJWTResponse instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('token', instance.token);
  writeNotNull('user_email', instance.userEmail);
  writeNotNull('user_nicename', instance.userNicename);
  writeNotNull('user_display_name', instance.userDisplayName);
  return val;
}
