import 'package:json_annotation/json_annotation.dart';

part 'shipping_method.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethod {
  String? id;
  String? title;
  String? description;

  WooShippingMethod({this.id, this.title, this.description});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodLocations {
  String? code;
  String? type;

  WooShippingMethodLocations({this.code, this.type});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodLocations.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodLocationsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodMethods {
  List<WooShippingMethodFreeShipping>? freeShipping;
  List<WooShippingMethodFlatRate>? flatRate;
  List<WooShippingMethodLocalPickup>? localPickup;

  WooShippingMethodMethods({
    this.freeShipping,
    this.flatRate,
    this.localPickup,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodMethods.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodMethodsFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodMethodsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodFreeShipping {
  int? id;
  String? title;
  String? methodId;
  String? cost;

  WooShippingMethodFreeShipping({
    this.id,
    this.title,
    this.methodId,
    this.cost,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodFreeShipping.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFreeShippingFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodFreeShippingToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodFlatRate {
  int? id;
  String? title;
  String? methodId;
  String? cost;
  String? classCost;
  String? calculationType;
  bool? taxable;
  List<WooShippingMethodShippingClasses>? shippingClasses;

  WooShippingMethodFlatRate({
    this.id,
    this.title,
    this.methodId,
    this.cost,
    this.classCost,
    this.calculationType,
    this.taxable,
    this.shippingClasses,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodFlatRate.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodFlatRateFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodFlatRateToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodShippingClasses {
  String? id;
  String? cost;

  WooShippingMethodShippingClasses({this.id, this.cost});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodShippingClasses.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingMethodShippingClassesFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingMethodShippingClassesToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingMethodLocalPickup {
  int? id;
  String? title;
  String? methodId;
  bool? taxable;
  String? cost;

  WooShippingMethodLocalPickup({
    this.id,
    this.title,
    this.methodId,
    this.taxable,
    this.cost,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingMethodLocalPickup.fromJson(Map<String, dynamic> json) =>
      _$WooShippingMethodLocalPickupFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingMethodLocalPickupToJson(this);
}
