import 'package:json_annotation/json_annotation.dart';

part 'customer.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCustomer {
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? email;
  String? firstName;
  String? lastName;
  String? role;
  String? username;
  String? password;
  Billing? billing;
  Shipping? shipping;
  bool? isPayingCustomer;
  String? avatarUrl;
  List<WooCustomerMetaData>? metaData;
  Links? links;

  WooCustomer({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.email,
    this.firstName,
    this.lastName,
    this.role,
    this.username,
    this.password,
    this.billing,
    this.shipping,
    this.isPayingCustomer,
    this.avatarUrl,
    this.metaData,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCustomer.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerToJson(this);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is WooCustomer && other.id == id;
  }

  @override
  int get hashCode {
    return id.hashCode;
  }
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCustomerMetaData {
  final int? id;
  final String? key;
  final dynamic value;

  WooCustomerMetaData(this.id, this.key, this.value);

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCustomerMetaData.fromJson(Map<String, dynamic> json) =>
      _$WooCustomerMetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$WooCustomerMetaDataToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Billing {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;
  String? email;
  String? phone;

  Billing({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
    this.email,
    this.phone,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory Billing.fromJson(Map<String, dynamic> json) =>
      _$BillingFromJson(json);

  Map<String, dynamic> toJson() => _$BillingToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Shipping {
  String? firstName;
  String? lastName;
  String? company;
  String? address1;
  String? address2;
  String? city;
  String? state;
  String? postcode;
  String? country;

  Shipping({
    this.firstName,
    this.lastName,
    this.company,
    this.address1,
    this.address2,
    this.city,
    this.state,
    this.postcode,
    this.country,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory Shipping.fromJson(Map<String, dynamic> json) =>
      _$ShippingFromJson(json);

  Map<String, dynamic> toJson() => _$ShippingToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Links {
  List<Self>? self;
  List<Collection>? collection;

  Links({this.self, this.collection});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Self {
  String? href;

  Self({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Self.fromJson(Map<String, dynamic> json) => _$SelfFromJson(json);

  Map<String, dynamic> toJson() => _$SelfToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class Collection {
  String? href;

  Collection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory Collection.fromJson(Map<String, dynamic> json) =>
      _$CollectionFromJson(json);

  Map<String, dynamic> toJson() => _$CollectionToJson(this);
}

String? parseField(String? field) {
  if (field != null && field.isNotEmpty) {
    return field;
  } else {
    return null;
  }
}
