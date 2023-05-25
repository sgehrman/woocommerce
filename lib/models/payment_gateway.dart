import 'package:json_annotation/json_annotation.dart';

part 'payment_gateway.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGateway {
  String? id;
  String? title;
  String? description;
  int? order;
  bool? enabled;
  String? methodTitle;
  String? methodDescription;
  List<String>? methodSupports;
  WooPaymentGatewaySettings? settings;
  WooPaymentGatewayLinks? lLinks;

  WooPaymentGateway({
    required String this.id,
    this.title,
    this.description,
    this.order,
    this.enabled,
    this.methodTitle,
    this.methodDescription,
    this.methodSupports,
    this.settings,
    this.lLinks,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGateway.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewayToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGatewaySettings {
  WooPaymentGatewayTitle? title;
  WooPaymentGatewayTitle? instructions;

  WooPaymentGatewaySettings({this.title, this.instructions});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGatewaySettings.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewaySettingsFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewaySettingsToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGatewayTitle {
  String? id;
  String? label;
  String? description;
  String? type;
  String? value;
  String? defaultvalue;
  String? tip;
  String? placeholder;

  WooPaymentGatewayTitle({
    this.id,
    this.label,
    this.description,
    this.type,
    this.value,
    this.defaultvalue,
    this.tip,
    this.placeholder,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGatewayTitle.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayTitleFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewayTitleToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGatewayLinks {
  List<WooPaymentGatewaySelf>? self;
  List<WooPaymentGatewayCollection>? collection;

  WooPaymentGatewayLinks({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGatewayLinks.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewayLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGatewaySelf {
  String? href;

  WooPaymentGatewaySelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGatewaySelf.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewaySelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewaySelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooPaymentGatewayCollection {
  String? href;

  WooPaymentGatewayCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooPaymentGatewayCollection.fromJson(Map<String, dynamic> json) =>
      _$WooPaymentGatewayCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooPaymentGatewayCollectionToJson(this);
}
