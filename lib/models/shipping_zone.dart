import 'package:json_annotation/json_annotation.dart';

part 'shipping_zone.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZone {
  int? id;
  String? name;
  int? order;
  WooShippingZoneLinks? links;

  WooShippingZone({this.id, this.name, this.order, this.links});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZone.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneLinks {
  List<WooShippingZoneSelf>? self;
  List<WooShippingZoneCollection>? collection;
  List<Describedby>? describedby;

  WooShippingZoneLinks({this.self, this.collection, this.describedby});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneLinks.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneSelf {
  String? href;

  WooShippingZoneSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneSelf.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneCollection {
  String? href;

  WooShippingZoneCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneCollection.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneCollectionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Describedby {
  String? href;

  Describedby({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Describedby.fromJson(Map<String, dynamic> json) =>
      _$DescribedbyFromJson(json);

  Map<String, dynamic> toJson() => _$DescribedbyToJson(this);
}
