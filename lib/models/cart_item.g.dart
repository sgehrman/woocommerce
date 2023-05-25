// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCartItem _$WooCartItemFromJson(Map<String, dynamic> json) => WooCartItem(
      key: json['key'] as String?,
      id: json['id'] as int?,
      quantity: json['quantity'] as int?,
      name: json['name'] as String?,
      sku: json['sku'] as String?,
      permalink: json['permalink'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => WooCartItemImages.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: json['price'] as String?,
      linePrice: json['line_price'] as String?,
      variation: (json['variation'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$WooCartItemToJson(WooCartItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('id', instance.id);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('name', instance.name);
  writeNotNull('sku', instance.sku);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('images', instance.images?.map((e) => e.toJson()).toList());
  writeNotNull('price', instance.price);
  writeNotNull('line_price', instance.linePrice);
  writeNotNull('variation', instance.variation);
  return val;
}

WooCartItemImages _$WooCartItemImagesFromJson(Map<String, dynamic> json) =>
    WooCartItemImages(
      id: json['id'] as String?,
      src: json['src'] as String?,
      thumbnail: json['thumbnail'] as String?,
      srcset: json['srcset'] as bool?,
      sizes: json['sizes'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$WooCartItemImagesToJson(WooCartItemImages instance) {
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
