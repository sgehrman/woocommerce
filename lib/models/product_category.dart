import 'package:json_annotation/json_annotation.dart';

part 'product_category.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductCategory {
  int? id;
  String? name;
  String? slug;
  int? parent;
  String? description;
  String? display;
  Map<String, dynamic>? acf;
  WooProductCategoryImage? image;
  int? menuOrder;
  int? count;
  WooProductCategoryLinks? links;
  Map<String, dynamic>? translations;
  String? lang;

  WooProductCategory({
    this.id,
    this.name,
    this.slug,
    this.parent,
    this.description,
    this.display,
    this.image,
    this.menuOrder,
    this.count,
    this.links,
    this.translations,
    this.lang,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductCategory.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductCategoryToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductCategoryImage {
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;

  WooProductCategoryImage({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductCategoryImage.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryImageFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductCategoryImageToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductCategoryLinks {
  List<WooProductCategorySelf>? self;
  List<WooProductCategoryCollection>? collection;

  WooProductCategoryLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductCategoryLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductCategoryLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductCategorySelf {
  String? href;

  WooProductCategorySelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductCategorySelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategorySelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductCategorySelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductCategoryCollection {
  String? href;

  WooProductCategoryCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductCategoryCollection.fromJson(Map<String, dynamic> json) =>
      _$WooProductCategoryCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductCategoryCollectionToJson(this);
}
