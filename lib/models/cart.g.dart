// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCart _$WooCartFromJson(Map<String, dynamic> json) => WooCart(
      totals: WooCartTotals.fromJson(json['totals'] as Map<String, dynamic>),
      items: (json['items'] as List<dynamic>)
          .map((e) => WooCartItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      itemCount: json['item_count'] as int?,
      needsShipping: json['needs_shipping'] as bool?,
      needsPayment: json['needs_payment'] as bool?,
      hasCalculatedShipping: json['has_calculated_shipping'] as bool?,
      totalPrice: json['total_price'] as String?,
      totalWeight: json['total_weight'] as int?,
    );

Map<String, dynamic> _$WooCartToJson(WooCart instance) {
  final val = <String, dynamic>{
    'totals': instance.totals.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('item_count', instance.itemCount);
  val['items'] = instance.items.map((e) => e.toJson()).toList();
  writeNotNull('needs_shipping', instance.needsShipping);
  writeNotNull('needs_payment', instance.needsPayment);
  writeNotNull('has_calculated_shipping', instance.hasCalculatedShipping);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('total_weight', instance.totalWeight);
  return val;
}

WooCartItems _$WooCartItemsFromJson(Map<String, dynamic> json) => WooCartItems(
      key: json['key'] as String?,
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      quantityLimit: json['quantity_limit'] as int?,
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      permalink: json['permalink'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => WooCartImages.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String?,
      linePrice: json['line_price'] as String?,
      variation: (json['variation'] as List<dynamic>?)
          ?.map(
              (e) => WooCartItemAttributes.fromJson(e as Map<String, dynamic>))
          .toList(),
    )
      ..prices = json['prices'] == null
          ? null
          : WooCartItemPrices.fromJson(json['prices'] as Map<String, dynamic>)
      ..totals = json['totals'] == null
          ? null
          : WooCartItemTotals.fromJson(json['totals'] as Map<String, dynamic>);

Map<String, dynamic> _$WooCartItemsToJson(WooCartItems instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('id', instance.id);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('quantity_limit', instance.quantityLimit);
  writeNotNull('name', instance.name);
  writeNotNull('sku', instance.sku);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('price', instance.price);
  writeNotNull('prices', instance.prices?.toJson());
  writeNotNull('totals', instance.totals?.toJson());
  writeNotNull('line_price', instance.linePrice);
  writeNotNull(
      'variation', instance.variation?.map((e) => e.toJson()).toList());
  return val;
}

WooCartImages _$WooCartImagesFromJson(Map<String, dynamic> json) =>
    WooCartImages(
      id: json['id'] as String?,
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as String?,
      sizes: json['sizes'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$WooCartImagesToJson(WooCartImages instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('src', instance.src);
  writeNotNull('thumbnail', instance.thumbnail);
  writeNotNull('srcset', instance.srcset);
  writeNotNull('sizes', instance.sizes);
  writeNotNull('name', instance.name);
  writeNotNull('alt', instance.alt);
  return val;
}

WooCartTotals _$WooCartTotalsFromJson(Map<String, dynamic> json) =>
    WooCartTotals(
      totalItems: json['total_items'] as String? ?? '0',
      totalPrice: json['total_price'] as String? ?? '0',
      currencyCode: json['currency_code'] as String? ?? '',
      currencyMinorUnit: json['currency_minor_unit'] as int? ?? 0,
    );

Map<String, dynamic> _$WooCartTotalsToJson(WooCartTotals instance) =>
    <String, dynamic>{
      'total_items': instance.totalItems,
      'total_price': instance.totalPrice,
      'currency_code': instance.currencyCode,
      'currency_minor_unit': instance.currencyMinorUnit,
    };

WooCartItemAttributes _$WooCartItemAttributesFromJson(
        Map<String, dynamic> json) =>
    WooCartItemAttributes(
      attribute: json['attribute'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$WooCartItemAttributesToJson(
    WooCartItemAttributes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('attribute', instance.attribute);
  writeNotNull('value', instance.value);
  return val;
}

WooCartItemPrices _$WooCartItemPricesFromJson(Map<String, dynamic> json) =>
    WooCartItemPrices(
      price: json['price'] as int?,
      regularPrice: json['regular_price'] as int?,
      salePrice: json['sale_price'] as int?,
      currencyCode: json['currency_code'] as String?,
      currencyMinorUnit: json['currency_minor_unit'] as int?,
    );

Map<String, dynamic> _$WooCartItemPricesToJson(WooCartItemPrices instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('currency_minor_unit', instance.currencyMinorUnit);
  return val;
}

WooCartItemTotals _$WooCartItemTotalsFromJson(Map<String, dynamic> json) =>
    WooCartItemTotals(
      lineSubtotal: json['line_subtotal'] as int?,
      lineTotal: json['line_total'] as int?,
      currencyCode: json['currency_code'] as String?,
      currencyMinorUnit: json['currency_minor_unit'] as int?,
    );

Map<String, dynamic> _$WooCartItemTotalsToJson(WooCartItemTotals instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('line_subtotal', instance.lineSubtotal);
  writeNotNull('line_total', instance.lineTotal);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('currency_minor_unit', instance.currencyMinorUnit);
  return val;
}
