// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'woocommerce_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCommerceError _$WooCommerceErrorFromJson(Map<String, dynamic> json) =>
    WooCommerceError(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooCommerceErrorToJson(WooCommerceError instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('message', instance.message);
  writeNotNull('data', instance.data?.toJson());
  return val;
}

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      status: json['status'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  return val;
}
