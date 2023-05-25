import 'package:json_annotation/json_annotation.dart';

part 'tax_rate.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxRate {
  int? id;
  String? country;
  String? state;
  String? postcode;
  String? city;
  String? rate;
  String? name;
  int? priority;
  bool? compound;
  bool? shipping;
  int? order;
  String? taxClass;
  WooTaxRateLinks? links;

  WooTaxRate({
    this.id,
    this.country,
    this.state,
    this.postcode,
    this.city,
    this.rate,
    this.name,
    this.priority,
    this.compound,
    this.shipping,
    this.order,
    this.taxClass,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxRate.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxRateToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxRateLinks {
  List<WooTaxRateSelf>? self;
  List<WooTaxRateCollection>? collection;

  WooTaxRateLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxRateLinks.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxRateLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxRateSelf {
  String? href;

  WooTaxRateSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxRateSelf.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxRateSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxRateCollection {
  String? href;

  WooTaxRateCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxRateCollection.fromJson(Map<String, dynamic> json) =>
      _$WooTaxRateCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxRateCollectionToJson(this);
}
