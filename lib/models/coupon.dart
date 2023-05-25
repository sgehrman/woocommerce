import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCoupon {
  int? id;
  String? code;
  String? amount;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? discountType;
  String? description;
  String? dateExpires;
  String? dateExpiresGmt;
  int? usageCount;
  bool? individualUse;
  List<int>? productIds;
  List<int>? excludedProductIds;
  int? usageLimit;
  int? usageLimitPerUser;
  int? limitUsageToXItems;
  bool? freeShipping;
  List<int>? productCategories;
  List<int>? excludedProductCategories;
  bool? excludeSaleItems;
  String? minimumAmount;
  String? maximumAmount;
  List<String>? emailRestrictions;
  List<String>? usedBy;
  List<String>? metaData;
  WooCouponLinks? lLinks;

  WooCoupon({
    this.id,
    this.code,
    this.amount,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountType,
    this.description,
    this.dateExpires,
    this.dateExpiresGmt,
    this.usageCount,
    this.individualUse,
    this.productIds,
    this.excludedProductIds,
    this.usageLimit,
    this.usageLimitPerUser,
    this.limitUsageToXItems,
    this.freeShipping,
    this.productCategories,
    this.excludedProductCategories,
    this.excludeSaleItems,
    this.minimumAmount,
    this.maximumAmount,
    this.emailRestrictions,
    this.usedBy,
    this.metaData,
    this.lLinks,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCoupon.fromJson(Map<String, dynamic> json) =>
      _$WooCouponFromJson(json);

  Map<String, dynamic> toJson() => _$WooCouponToJson(this);
}

// ==================================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCouponLinks {
  List<Self>? self;
  List<Collection>? collection;

  WooCouponLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCouponLinks.fromJson(Map<String, dynamic> json) =>
      _$WooCouponLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooCouponLinksToJson(this);
}

// ==================================================================

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

// ==================================================================

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

// ==================================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class CouponMetadata {
  int? id;
  String? key;
  String? value;

  CouponMetadata({this.key, this.value});

  @override
  String toString() {
    return toJson().toString();
  }

  factory CouponMetadata.fromJson(Map<String, dynamic> json) =>
      _$CouponMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$CouponMetadataToJson(this);
}
