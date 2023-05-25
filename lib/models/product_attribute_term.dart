import 'package:json_annotation/json_annotation.dart';

part 'product_attribute_term.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductAttributeTerm {
  int? id;
  String? name;
  String? slug;
  String? description;
  int? menuOrder;
  int? count;
  WooProductAttributeTermLinks? links;

  WooProductAttributeTerm({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.menuOrder,
    this.count,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductAttributeTerm.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeTermFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductAttributeTermToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductAttributeTermLinks {
  List<WooProductAttributeTermSelf>? self;
  List<WooProductAttributeTermCollection>? collection;

  WooProductAttributeTermLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductAttributeTermLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeTermLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductAttributeTermLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductAttributeTermSelf {
  String? href;

  WooProductAttributeTermSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductAttributeTermSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductAttributeTermSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductAttributeTermSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductAttributeTermCollection {
  String? href;

  WooProductAttributeTermCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductAttributeTermCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooProductAttributeTermCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooProductAttributeTermCollectionToJson(this);
}
