import 'package:json_annotation/json_annotation.dart';

part 'product_tag.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductTag {
  int? id;
  String? name;
  String? slug;
  String? description;
  int? count;
  WooProductTagLinks? lLinks;

  WooProductTag({
    this.id,
    this.name,
    this.slug,
    this.description,
    this.count,
    this.lLinks,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductTag.fromJson(Map<String, dynamic> json) =>
      _$WooProductTagFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductTagToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductTagLinks {
  List<WooProductTagSelf>? self;
  List<WooProductTagCollection>? collection;

  WooProductTagLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductTagLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductTagLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductTagLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductTagSelf {
  String? href;

  WooProductTagSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductTagSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductTagSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductTagSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductTagCollection {
  String? href;

  WooProductTagCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductTagCollection.fromJson(Map<String, dynamic> json) =>
      _$WooProductTagCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductTagCollectionToJson(this);
}
