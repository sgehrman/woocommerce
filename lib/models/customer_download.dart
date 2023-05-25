import 'package:json_annotation/json_annotation.dart';

part 'customer_download.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCustomerDownload {
  String? downloadId;
  String? downloadUrl;
  int? productId;
  String? productName;
  String? downloadName;
  int? orderId;
  String? orderKey;
  String? downloadsRemaining;
  String? accessExpires;
  String? accessExpiresGmt;
  WooCustomerDownloadFile? file;

  WooCustomerDownload({
    this.downloadId,
    this.downloadUrl,
    this.productId,
    this.productName,
    this.downloadName,
    this.orderId,
    this.orderKey,
    this.downloadsRemaining,
    this.accessExpires,
    this.accessExpiresGmt,
    this.file,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCustomerDownload.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerDownloadToJson(this);
}

// ====================================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCustomerDownloadFile {
  String? name;
  String? file;

  WooCustomerDownloadFile({this.name, this.file});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCustomerDownloadFile.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerDownloadFileFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerDownloadFileToJson(this);
}
