import 'package:json_annotation/json_annotation.dart';

part 'shipping_zone_method.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethod {
  int? instanceId;
  String? title;
  int? order;
  bool? enabled;
  String? methodId;
  String? methodTitle;
  String? methodDescription;
  WooShippingZoneMethodSettings? settings;
  WooShippingZoneMethodLinks? links;

  WooShippingZoneMethod({
    this.instanceId,
    this.title,
    this.order,
    this.enabled,
    this.methodId,
    this.methodTitle,
    this.methodDescription,
    this.settings,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethod.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodToJson(this);
}
// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodSettings {
  WooShippingZoneMethodTitle? title;
  WooShippingZoneMethodTaxStatus? taxStatus;
  WooShippingZoneMethodCost? cost;
  WooShippingZoneMethodClassCosts? classCosts;
  WooShippingZoneMethodClassCost92? classCost92;
  WooShippingZoneMethodClassCost91? classCost91;
  WooShippingZoneMethodNoClassCost? noClassCost;
  WooShippingZoneMethodType? type;

  WooShippingZoneMethodSettings({
    this.title,
    this.taxStatus,
    this.cost,
    this.classCosts,
    this.classCost92,
    this.classCost91,
    this.noClassCost,
    this.type,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodSettings.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodSettingsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodTitle {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? titleDefault;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodTitle({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.titleDefault,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodTitle.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTitleFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodTitleToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodTaxStatus {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? taxDefault;
  String? tip;
  String? placeholder;
  WooShippingZoneMethodOptions? options;

  WooShippingZoneMethodTaxStatus({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.taxDefault,
    this.tip,
    this.placeholder,
    this.options,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodTaxStatus.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTaxStatusFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodTaxStatusToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodOptions {
  String? taxable;
  String? none;

  WooShippingZoneMethodOptions({this.taxable, this.none});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodOptionsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodCost {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? costDefault;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodCost({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.costDefault,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodCost.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodCostFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodCostToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodClassCosts {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? classCostsDefault;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodClassCosts({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.classCostsDefault,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodClassCosts.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodClassCostsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCostsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodClassCost92 {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? classCost92Default;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodClassCost92({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.classCost92Default,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodClassCost92.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingZoneMethodClassCost92FromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCost92ToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodClassCost91 {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? classCost91Default;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodClassCost91({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.classCost91Default,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodClassCost91.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingZoneMethodClassCost91FromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodClassCost91ToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodNoClassCost {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? noClassCostDefault;
  String? tip;
  String? placeholder;

  WooShippingZoneMethodNoClassCost({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.noClassCostDefault,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodNoClassCost.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WooShippingZoneMethodNoClassCostFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodNoClassCostToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodType {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? typeDefault;
  String? tip;
  String? placeholder;
  WooShippingZoneMethodOptions? options;

  WooShippingZoneMethodType({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.typeDefault,
    this.tip,
    this.placeholder,
    this.options,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodType.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodTypeFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodTypeToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodLinks {
  List<WooShippingZoneMethodSelf>? self;
  List<WooShippingZoneMethodCollection>? collection;
  List<WooShippingZoneMethodDescribes>? describes;

  WooShippingZoneMethodLinks({this.self, this.collection, this.describes});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodLinks.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodSelf {
  String? href;

  WooShippingZoneMethodSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodSelf.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodCollection {
  String? href;

  WooShippingZoneMethodCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodCollection.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodCollectionFromJson(json);

  Map<String, dynamic> toJson() =>
      _$WooShippingZoneMethodCollectionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooShippingZoneMethodDescribes {
  String? href;

  WooShippingZoneMethodDescribes({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooShippingZoneMethodDescribes.fromJson(Map<String, dynamic> json) =>
      _$WooShippingZoneMethodDescribesFromJson(json);

  Map<String, dynamic> toJson() => _$WooShippingZoneMethodDescribesToJson(this);
}
