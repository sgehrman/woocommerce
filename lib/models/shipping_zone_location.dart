import 'package:json_annotation/json_annotation.dart';

part 'shipping_zone_location.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneLocation {
  String? code;
  String? type;
  WooShippingZoneLocationLinks? links;

  WooShippingZoneLocation({this.code, this.type, this.links});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneLocation.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLocationFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneLocationToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneLocationLinks {
  List<WooShippingZoneLocationCollection>? collection;
  List<WooShippingZoneLocationDescribes>? describes;

  WooShippingZoneLocationLinks({this.collection, this.describes});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneLocationLinks.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneLocationLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneLocationLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneLocationCollection {
  String? href;

  WooShippingZoneLocationCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneLocationCollection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingZoneLocationCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneLocationCollectionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneLocationDescribes {
  String? href;

  WooShippingZoneLocationDescribes({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneLocationDescribes.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingZoneLocationDescribesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneLocationDescribesToJson(this);
}
