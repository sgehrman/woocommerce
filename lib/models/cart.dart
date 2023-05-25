import 'package:json_annotation/json_annotation.dart';
import 'package:woocommerce/utilities/woo_price_formatter.dart';

part 'cart.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCart {
  WooCartTotals totals;
  int? itemCount;
  List<WooCartItems> items;
  bool? needsShipping;
  bool? needsPayment;
  bool? hasCalculatedShipping;
  String? totalPrice;
  int? totalWeight;

  WooCart({
    required this.totals,
    required this.items,
    this.itemCount,
    this.needsShipping,
    this.needsPayment,
    this.hasCalculatedShipping,
    this.totalPrice,
    this.totalWeight,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCart.fromJson(Map<String, dynamic> json) =>
      _$WooCartFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)

// ======================================================

class WooCartItems {
  String? key;
  int? id;
  int? quantity;
  int? quantityLimit;
  String? name;
  String? sku;
  String? permalink;
  List<WooCartImages>? images;
  String? price;
  WooCartItemPrices? prices;
  WooCartItemTotals? totals;
  String? linePrice;
  List<WooCartItemAttributes>? variation;

  WooCartItems({
    this.key,
    this.id,
    this.quantity,
    this.quantityLimit,
    this.name,
    this.sku,
    this.permalink,
    this.images,
    this.price,
    this.linePrice,
    this.variation,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItems.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemsFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemsToJson(this);
}

// ======================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartImages {
  String? id;
  String? src;
  String? thumbnail;
  String? srcset;
  String? sizes;
  String? name;
  String? alt;

  WooCartImages({
    this.id,
    this.src,
    this.thumbnail,
    this.srcset,
    this.sizes,
    this.name,
    this.alt,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartImages.fromJson(Map<String, dynamic> json) =>
      _$WooCartImagesFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartImagesToJson(this);
}

// ======================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartTotals {
  WooCartTotals({
    this.totalItems = '0',
    this.totalPrice = '0',
    this.currencyCode = '',
    this.currencyMinorUnit = 0,
  });

  final String totalItems;
  final String totalPrice;
  final String currencyCode;
  final int currencyMinorUnit;

  String? get displayTotalPrice => WooPriceFormatter.displayPrice(
        int.tryParse(totalPrice),
        currencyMinorUnit,
      );

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartTotals.fromJson(Map<String, dynamic> json) =>
      _$WooCartTotalsFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartTotalsToJson(this);
}

// ======================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartItemAttributes {
  final String? attribute;
  final String? value;

  WooCartItemAttributes({
    required this.attribute,
    required this.value,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItemAttributes.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemAttributesToJson(this);
}

// ======================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartItemPrices {
  final int? price;
  final int? regularPrice;
  final int? salePrice;
  final String? currencyCode;
  final int? currencyMinorUnit;

  WooCartItemPrices({
    this.price,
    this.regularPrice,
    this.salePrice,
    this.currencyCode,
    this.currencyMinorUnit,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItemPrices.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemPricesFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemPricesToJson(this);

  String? get displayPrice =>
      WooPriceFormatter.displayPrice(price, currencyMinorUnit);

  String? get displayRegularPrice =>
      WooPriceFormatter.displayPrice(regularPrice, currencyMinorUnit);

  String? get displaySalePrice =>
      WooPriceFormatter.displayPrice(salePrice, currencyMinorUnit);
}

// ======================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartItemTotals {
  final int? lineSubtotal;
  final int? lineTotal;
  final String? currencyCode;
  final int? currencyMinorUnit;

  WooCartItemTotals({
    this.lineSubtotal,
    this.lineTotal,
    this.currencyCode,
    this.currencyMinorUnit,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItemTotals.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemTotalsFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemTotalsToJson(this);

  String? get displayLineTotal =>
      WooPriceFormatter.displayPrice(lineTotal, currencyMinorUnit);

  String? get displayLineSubtotal =>
      WooPriceFormatter.displayPrice(lineSubtotal, currencyMinorUnit);
}
