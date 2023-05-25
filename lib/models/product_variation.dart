import 'package:json_annotation/json_annotation.dart';

part 'product_variation.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariation {
  int? id;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? description;
  String? permalink;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  DateTime? dateOnSaleFrom;
  DateTime? dateOnSaleFromGmt;
  DateTime? dateOnSaleTo;
  DateTime? dateOnSaleToGmt;
  bool? onSale;
  String? status;
  bool? purchasable;
  bool? virtual;
  bool? downloadable;
  List<WooProductVariationDownload> downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  int? stockQuantity;
  String? stockStatus;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  List<WooProductVariationAttribute> attributes;
  String? weight;
  String? shippingClass;
  int? shippingClassId;
  int? menuOrder;
  WooProductVariationDimension dimensions;
  List<WooProductVariationMetaData> metaData;
  WooProductVariationImage? image;
  int? parentId;
  double? andromoPriceToDisplay;
  double? andromoRegularPriceToDisplay;
  Map<String, dynamic>? translations;
  String? lang;

  WooProductVariation(
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.description,
    this.permalink,
    this.sku,
    this.price,
    this.attributes,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.status,
    this.purchasable,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.weight,
    this.shippingClass,
    this.shippingClassId,
    this.menuOrder,
    this.dimensions,
    this.metaData,
    this.image,
    this.parentId,
    this.andromoPriceToDisplay,
    this.andromoRegularPriceToDisplay,
    this.translations,
    this.lang,
  );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariation.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationMetaData {
  final int? id;
  final String? key;
  final String value;

  WooProductVariationMetaData(this.id, this.key, this.value);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationMetaDataToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationCategory {
  final int? id;
  final String? name;
  final String? slug;

  WooProductVariationCategory(this.id, this.name, this.slug);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationCategory.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationCategoryToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationDimension {
  final String? length;
  final String? width;
  final String? height;

  WooProductVariationDimension(this.length, this.height, this.width);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationDimension.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationDimensionFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationDimensionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationAttribute {
  final int? id;
  final String? name;
  final String? option;

  WooProductVariationAttribute(this.id, this.name, this.option);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationAttributeToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationDownload {
  final String? id;
  final String? name;
  final String? file;

  WooProductVariationDownload(this.id, this.name, this.file);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationDownload.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationDownloadToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductVariationImage {
  final int? id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String? src;
  final String? name;
  final String? alt;

  WooProductVariationImage(
    this.id,
    this.src,
    this.name,
    this.alt,
    this.dateCreated,
    this.dateCreatedGMT,
    this.dateModified,
    this.dateModifiedGMT,
  );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductVariationImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductVariationImageFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductVariationImageToJson(this);
}
