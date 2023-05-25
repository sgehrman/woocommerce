import 'package:json_annotation/json_annotation.dart';

part 'order.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrder {
  int? id;
  int? parentId;
  String? number;
  String? orderKey;
  String? createdVia;
  String? version;
  String? status;
  String? currency;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? discountTotal;
  String? discountTax;
  String? shippingTotal;
  String? shippingTax;
  String? cartTax;
  String? total;
  String? totalTax;
  bool? pricesIncludeTax;
  int? customerId;
  String? customerIpAddress;
  String? customerUserAgent;
  String? customerNote;
  Billing? billing;
  Shipping? shipping;
  String? paymentMethod;
  String? paymentMethodTitle;
  String? transactionId;
  String? datePaid;
  String? datePaidGmt;
  String? dateCompleted;
  String? dateCompletedGmt;
  String? cartHash;
  List<MetaData>? metaData;
  List<LineItems>? lineItems;
  List<TaxLines>? taxLines;
  List<ShippingLines>? shippingLines;
  List<WooOrderFeeLine>? feeLines;
  List<WooOrderCouponLine>? couponLines;
  List<Refunds>? refunds;
  Links? links;

  WooOrder({
    required int this.id,
    this.parentId,
    this.number,
    this.orderKey,
    this.createdVia,
    this.version,
    this.status,
    this.currency,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountTotal,
    this.discountTax,
    this.shippingTotal,
    this.shippingTax,
    this.cartTax,
    this.total,
    this.totalTax,
    this.pricesIncludeTax,
    this.customerId,
    this.customerIpAddress,
    this.customerUserAgent,
    this.customerNote,
    this.billing,
    this.shipping,
    this.paymentMethod,
    this.paymentMethodTitle,
    this.transactionId,
    this.datePaid,
    this.datePaidGmt,
    this.dateCompleted,
    this.dateCompletedGmt,
    this.cartHash,
    this.metaData,
    this.lineItems,
    this.taxLines,
    this.shippingLines,
    this.feeLines,
    this.couponLines,
    this.refunds,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrder.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderCouponLine {
  int? id;
  String? code;
  String? discount;
  String? discountTax;
  List<MetaData> metaData;

  WooOrderCouponLine(
    this.id,
    this.code,
    this.discount,
    this.discountTax,
    this.metaData,
  );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderCouponLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderCouponLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderCouponLineToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooOrderFeeLine {
  int? id;
  String? name;
  String? taxClass;
  String? taxStatus;
  String? total;
  String? totalTax;
  List<FeeLineTax> taxes;
  List<MetaData> metaData;

  WooOrderFeeLine(
    this.id,
    this.name,
    this.taxClass,
    this.taxStatus,
    this.totalTax,
    this.taxes,
    this.metaData,
  );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooOrderFeeLine.fromJson(Map<String, dynamic> json) =>
      _$WooOrderFeeLineFromJson(json);

  Map<String, dynamic> toJson() => _$WooOrderFeeLineToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class FeeLineTax {
  int? id;
  String? rateCode;
  String? rateId;
  String? label;
  bool? compound;
  String? taxTotal;
  String? shippingTaxTotal;
  List<MetaData>? metaData;

  FeeLineTax({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory FeeLineTax.fromJson(Map<String, dynamic> json) =>
      _$FeeLineTaxFromJson(json);

  Map<String, dynamic> toJson() => _$FeeLineTaxToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Billing {
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

  Billing({
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

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);

  Map<String, dynamic> toJson() => _$BillingToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Shipping {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  Shipping({
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

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class MetaData {
  int? id;
  String? key;
  String? value;

  MetaData({this.id, this.key, this.value});

  @override
  String toString() {
    return toJson().toString();
  }

  factory MetaData.fromJson(Map<String, dynamic> json) =>
      _$MetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Refunds {
  int? id;
  String? reason;
  String? total;

  Refunds({this.id, this.reason, this.total});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Refunds.fromJson(Map<String, dynamic> json) =>
      _$RefundsFromJson(json);

  Map<String, dynamic> toJson() => _$RefundsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class LineItems {
  int? id;
  String? name;
  int? productId;
  int? variationId;
  int? quantity;
  String? taxClass;
  String? subtotal;
  String? subtotalTax;
  String? total;
  String? totalTax;
  List<Taxes>? taxes;
  List<MetaData>? metaData;
  String? sku;
  String? price;

  LineItems({
    this.id,
    this.name,
    this.productId,
    this.variationId,
    this.quantity,
    this.taxClass,
    this.subtotal,
    this.subtotalTax,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
    this.sku,
    this.price,
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
class Taxes {
  int? id;
  String? total;
  String? subtotal;

  Taxes({this.id, this.total, this.subtotal});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Taxes.fromJson(Map<String, dynamic> json) => _$TaxesFromJson(json);

  Map<String, dynamic> toJson() => _$TaxesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class TaxLines {
  int? id;
  String? rateCode;
  int? rateId;
  String? label;
  bool? compound;
  String? taxTotal;
  String? shippingTaxTotal;
  List<MetaData>? metaData;

  TaxLines({
    this.id,
    this.rateCode,
    this.rateId,
    this.label,
    this.compound,
    this.taxTotal,
    this.shippingTaxTotal,
    this.metaData,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory TaxLines.fromJson(Map<String, dynamic> json) =>
      _$TaxLinesFromJson(json);

  Map<String, dynamic> toJson() => _$TaxLinesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class ShippingLines {
  int? id;
  String? methodTitle;
  String? methodId;
  String? total;
  String? totalTax;
  List<Taxes>? taxes;
  List<MetaData>? metaData;

  ShippingLines({
    this.id,
    this.methodTitle,
    this.methodId,
    this.total,
    this.totalTax,
    this.taxes,
    this.metaData,
  });

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
class Links {
  List<Self>? self;
  List<Collection>? collection;

  Links({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Self {
  String? href;

  Self({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);

  Map<String, dynamic> toJson() => _$SelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Collection {
  String? href;

  Collection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}
