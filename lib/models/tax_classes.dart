import 'package:json_annotation/json_annotation.dart';

part 'tax_classes.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxClass {
  String? slug;
  String? name;
  WooTaxClassLinks? links;

  WooTaxClass({this.slug, this.name, this.links});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxClass.fromJson(Map<String, dynamic> json) =>
      _$WooTaxClassFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxClassToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxClassLinks {
  List<WooTaxClassCollection>? collection;

  WooTaxClassLinks({this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxClassLinks.fromJson(Map<String, dynamic> json) =>
      _$WooTaxClassLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxClassLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooTaxClassCollection {
  String? href;

  WooTaxClassCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooTaxClassCollection.fromJson(Map<String, dynamic> json) =>
      _$WooTaxClassCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooTaxClassCollectionToJson(this);
}
