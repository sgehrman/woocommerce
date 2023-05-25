import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce/models/product_category.dart';

part 'products.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProduct {
  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;
  final String? type;
  final String? status;
  final bool? featured;
  final String? catalogVisibility;
  final String? description;
  final String? shortDescription;
  final String? sku;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final String? priceHtml;
  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;
  final bool? virtual;
  final bool? downloadable;
  final List<WooProductDownload> downloads;
  final int? downloadLimit;
  final int? downloadExpiry;
  final String? externalUrl;
  final String? buttonText;
  final String? taxStatus;
  final String? taxClass;
  final bool? manageStock;
  final int? stockQuantity;
  final String? stockStatus;
  final String? backorders;
  final bool? backordersAllowed;
  final bool? backordered;
  final bool? soldIndividually;
  final String? weight;
  final WooProductDimension dimensions;
  final bool? shippingRequired;
  final bool? shippingTaxable;
  final String? shippingClass;
  final int? shippingClassId;
  final bool? reviewsAllowed;
  final String? averageRating;
  final int? ratingCount;
  final List<int>? relatedIds;
  final List<int>? upsellIds;
  final List<int>? crossSellIds;
  final int? parentId;
  final String? purchaseNote;
  final List<WooProductCategory> categories;
  final List<WooProductItemTag> tags;
  final List<WooProductImage> images;
  final List<WooProductItemAttribute> attributes;
  final List<WooProductDefaultAttribute> defaultAttributes;
  final List<int>? variations;
  final List<int>? groupedProducts;
  final int? menuOrder;
  final List<MetaData> metaData;
  final double? andromoPriceToDisplay;
  final double? andromoRegularPriceToDisplay;
  final String? andromoVariationMinPriceToDisplay;
  final String? andromoVariationMaxPriceToDisplay;
  final Map<String, dynamic>? translations;
  final String? lang;

  WooProduct(
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.andromoPriceToDisplay,
    this.andromoRegularPriceToDisplay,
    this.andromoVariationMaxPriceToDisplay,
    this.andromoVariationMinPriceToDisplay,
    this.translations,
    this.lang,
  );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProduct.fromJson(Map<String, dynamic> json) =>
      _$WooProductFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WooProduct && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductItemTag {
  final int? id;
  final String? name;
  final String? slug;

  WooProductItemTag(this.id, this.name, this.slug);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductItemTag.fromJson(Map<String, dynamic> json) =>
      _$WooProductItemTagFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductItemTagToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class MetaData {
  final int? id;
  final String? key;
  final dynamic value;

  MetaData({
    required this.id,
    required this.key,
    required this.value,
  });

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
class WooProductDefaultAttribute {
  final int? id;
  final String? name;
  final String? option;

  WooProductDefaultAttribute(this.id, this.name, this.option);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductDefaultAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductDefaultAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductDefaultAttributeToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductImage {
  final int? id;
  final DateTime dateCreated;
  final DateTime dateCreatedGMT;
  final DateTime dateModified;
  final DateTime dateModifiedGMT;
  final String? src;
  final String? name;
  final String? alt;

  WooProductImage(
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

  factory WooProductImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductImageFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductImageToJson(this);
}

///
/// class Category {
///  final int id;
/// final String name;
///   final String slug;

///   Category(this.id, this.name, this.slug);

///   Category.fromJson(Map<String, dynamic> json)
///       : id = json['id'],
///         name = json['name'],
///         slug = json['slug'];

///   Map<String, dynamic> toJson() => {
///         'id': id,
///         'name': name,
///         'slug': slug,
///       };
///   @override toString() => toJson().toString();
/// }
///

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductDimension {
  final String? length;
  final String? width;
  final String? height;

  WooProductDimension(this.length, this.height, this.width);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductDimension.fromJson(Map<String, dynamic> json) =>
      _$WooProductDimensionFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductDimensionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductItemAttribute {
  final int? id;
  final String? name;
  final int? position;
  final bool? visible;
  final bool? variation;
  final List<String>? options;

  WooProductItemAttribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductItemAttribute.fromJson(Map<String, dynamic> json) =>
      _$WooProductItemAttributeFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductItemAttributeToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductDownload {
  final String? id;
  final String? name;
  final String? file;

  WooProductDownload(this.id, this.name, this.file);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductDownload.fromJson(Map<String, dynamic> json) =>
      _$WooProductDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductDownloadToJson(this);
}
