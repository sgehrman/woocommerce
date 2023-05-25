import 'package:json_annotation/json_annotation.dart';

part 'order_payload.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayload {
  String? paymentMethod;
  String? paymentMethodTitle;
  bool? setPaid;
  String? status;
  String? currency;
  int? customerId;
  String? customerNote;
  int? parentId;
  List<WooOrderPayloadMetaData>? metaData;
  List<WooOrderPayloadFeeLines>? feeLines;
  List<WooOrderPayloadCouponLines>? couponLines;
  WooOrderPayloadBilling? billing;
  WooOrderPayloadShipping? shipping;
  List<LineItems>? lineItems;
  List<ShippingLines>? shippingLines;
  String? lang;

  WooOrderPayload({
    this.paymentMethod,
    this.paymentMethodTitle,
    this.setPaid,
    this.status,
    this.currency,
    this.customerId,
    this.customerNote,
    this.parentId,
    this.metaData,
    this.feeLines,
    this.couponLines,
    this.billing,
    this.shipping,
    this.lineItems,
    this.shippingLines,
    this.lang,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayload.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayloadMetaData {
  String? key;
  String? value;

  WooOrderPayloadMetaData({this.key, this.value});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayloadMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadMetaDataToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayloadFeeLines {
  String? name;
  String? taxClass;
  String? taxStatus;
  String? total;
  List<WooOrderPayloadMetaData>? metaData;

  WooOrderPayloadFeeLines({
    this.name,
    this.taxClass,
    this.taxStatus,
    this.total,
    this.metaData,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayloadFeeLines.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadFeeLinesFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadFeeLinesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayloadCouponLines {
  String? code;
  List<WooOrderPayloadMetaData>? metaData;

  WooOrderPayloadCouponLines({this.code, this.metaData});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayloadCouponLines.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadCouponLinesFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadCouponLinesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayloadBilling {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;

  WooOrderPayloadBilling({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayloadBilling.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadBillingFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadBillingToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderPayloadShipping {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  WooOrderPayloadShipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderPayloadShipping.fromJson(Map<String, dynamic> json) =>
      _$WooOrderPayloadShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderPayloadShippingToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class LineItems {
  int? productId;
  String? name;
  int? variationId;
  String? taxClass;
  String? subtotal;
  String? total;
  int? quantity;
  List<LineItemMetaData> metaData = const [];

  LineItems({
    required this.metaData,
    this.productId,
    this.name,
    this.variationId,
    this.taxClass,
    this.subtotal,
    this.total,
    this.quantity,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory LineItems.fromJson(Map<String, dynamic> json) =>
      _$LineItemsFromJson(json);

  Map<String, dynamic> toJson() => _$LineItemsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class ShippingLines {
  String? methodId;
  String? methodTitle;
  String? total;

  ShippingLines({this.methodId, this.methodTitle, this.total});

  @override
  String toString() {
    return toJson().toString();
  }

  factory ShippingLines.fromJson(Map<String, dynamic> json) =>
      _$ShippingLinesFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingLinesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class LineItemMetaData {
  final String? key;
  final dynamic value;

  LineItemMetaData({
    required this.key,
    required this.value,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory LineItemMetaData.fromJson(Map<String, dynamic> json) =>
      _$LineItemMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$LineItemMetaDataToJson(this);
}
