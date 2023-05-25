import 'package:json_annotation/json_annotation.dart';

part 'woocommerce_error.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCommerceError {
  String? code;
  String? message;
  Data? data;

  WooCommerceError({this.code, this.message, this.data});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCommerceError.fromJson(Map<String, dynamic> json) =>
      _$WooCommerceErrorFromJson(json);

  Map<String, dynamic> toJson() => _$WooCommerceErrorToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Data {
  int? _status;

  Data({int? status}) {
    _status = status;
  }

  int? get status => _status;

  @override
  String toString() {
    return toJson().toString();
  }

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
