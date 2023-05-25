// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooUser _$WooUserFromJson(Map<String, dynamic> json) => WooUser(
      email: json['email'] as String,
      username: json['username'] as String,
      id: json['id'] as int?,
      password: json['password'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$WooUserToJson(WooUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('username', instance.username);
  writeNotNull('password', instance.password);
  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('name', instance.name);
  return val;
}
