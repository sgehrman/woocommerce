import 'package:json_annotation/json_annotation.dart';

part 'product_shipping_class.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductShippingClass {
  int? id;
  String? name;
  String? slug;
  String? description;
  int? count;
  WooProductShippingClassLinks? links;

  WooProductShippingClass({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.count,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductShippingClass.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductShippingClassToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductShippingClassLinks {
  List<WooProductShippingClassSelf>? self;
  List<WooProductShippingClassCollection>? collection;

  WooProductShippingClassLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductShippingClassLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductShippingClassLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductShippingClassSelf {
  String? href;

  WooProductShippingClassSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductShippingClassSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductShippingClassSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductShippingClassSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductShippingClassCollection {
  String? href;

  WooProductShippingClassCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductShippingClassCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooProductShippingClassCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooProductShippingClassCollectionToJson(this);
}
