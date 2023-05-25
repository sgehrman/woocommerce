// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_download.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCustomerDownload _$WooCustomerDownloadFromJson(Map<String, dynamic> json) =>
    WooCustomerDownload(
      downloadId: json['download_id'] as String?,
      downloadUrl: json['download_url'] as String?,
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      downloadName: json['download_name'] as String?,
      orderId: json['order_id'] as int?,
      orderKey: json['order_key'] as String?,
      downloadsRemaining: json['downloads_remaining'] as String?,
      accessExpires: json['access_expires'] as String?,
      accessExpiresGmt: json['access_expires_gmt'] as String?,
      file: json['file'] == null
          ? null
          : WooCustomerDownloadFile.fromJson(
              json['file'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooCustomerDownloadToJson(WooCustomerDownload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('download_id', instance.downloadId);
  writeNotNull('download_url', instance.downloadUrl);
  writeNotNull('product_id', instance.productId);
  writeNotNull('product_name', instance.productName);
  writeNotNull('download_name', instance.downloadName);
  writeNotNull('order_id', instance.orderId);
  writeNotNull('order_key', instance.orderKey);
  writeNotNull('downloads_remaining', instance.downloadsRemaining);
  writeNotNull('access_expires', instance.accessExpires);
  writeNotNull('access_expires_gmt', instance.accessExpiresGmt);
  writeNotNull('file', instance.file?.toJson());
  return val;
}

WooCustomerDownloadFile _$WooCustomerDownloadFileFromJson(
        Map<String, dynamic> json) =>
    WooCustomerDownloadFile(
      name: json['name'] as String?,
      file: json['file'] as String?,
    );

Map<String, dynamic> _$WooCustomerDownloadFileToJson(
    WooCustomerDownloadFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('file', instance.file);
  return val;
}
