// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_variation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductVariation _$WooProductVariationFromJson(Map<String, dynamic> json) =>
    WooProductVariation(
      json['id'] as int?,
      json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      json['date_created_gmt'] == null
          ? null
          : DateTime.parse(json['date_created_gmt'] as String),
      json['date_modified'] == null
          ? null
          : DateTime.parse(json['date_modified'] as String),
      json['date_modified_gmt'] == null
          ? null
          : DateTime.parse(json['date_modified_gmt'] as String),
      json['description'] as String?,
      json['permalink'] as String?,
      json['sku'] as String?,
      json['price'] as String?,
      (json['attributes'] as List<dynamic>)
          .map((e) =>
              WooProductVariationAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['regular_price'] as String?,
      json['sale_price'] as String?,
      json['date_on_sale_from'] == null
          ? null
          : DateTime.parse(json['date_on_sale_from'] as String),
      json['date_on_sale_from_gmt'] == null
          ? null
          : DateTime.parse(json['date_on_sale_from_gmt'] as String),
      json['date_on_sale_to'] == null
          ? null
          : DateTime.parse(json['date_on_sale_to'] as String),
      json['date_on_sale_to_gmt'] == null
          ? null
          : DateTime.parse(json['date_on_sale_to_gmt'] as String),
      json['on_sale'] as bool?,
      json['status'] as String?,
      json['purchasable'] as bool?,
      json['virtual'] as bool?,
      json['downloadable'] as bool?,
      (json['downloads'] as List<dynamic>)
          .map((e) =>
              WooProductVariationDownload.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['download_limit'] as int?,
      json['download_expiry'] as int?,
      json['tax_status'] as String?,
      json['tax_class'] as String?,
      json['manage_stock'] as bool?,
      json['stock_quantity'] as int?,
      json['stock_status'] as String?,
      json['backorders'] as String?,
      json['backorders_allowed'] as bool?,
      json['backordered'] as bool?,
      json['weight'] as String?,
      json['shipping_class'] as String?,
      json['shipping_class_id'] as int?,
      json['menu_order'] as int?,
      WooProductVariationDimension.fromJson(
          json['dimensions'] as Map<String, dynamic>),
      (json['meta_data'] as List<dynamic>)
          .map((e) =>
              WooProductVariationMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['image'] == null
          ? null
          : WooProductVariationImage.fromJson(
              json['image'] as Map<String, dynamic>),
      json['parent_id'] as int?,
      (json['andromo_price_to_display'] as num?)?.toDouble(),
      (json['andromo_regular_price_to_display'] as num?)?.toDouble(),
      json['translations'] as Map<String, dynamic>?,
      json['lang'] as String?,
    );

Map<String, dynamic> _$WooProductVariationToJson(WooProductVariation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_created_gmt', instance.dateCreatedGmt?.toIso8601String());
  writeNotNull('date_modified', instance.dateModified?.toIso8601String());
  writeNotNull(
      'date_modified_gmt', instance.dateModifiedGmt?.toIso8601String());
  writeNotNull('description', instance.description);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('date_on_sale_from', instance.dateOnSaleFrom?.toIso8601String());
  writeNotNull(
      'date_on_sale_from_gmt', instance.dateOnSaleFromGmt?.toIso8601String());
  writeNotNull('date_on_sale_to', instance.dateOnSaleTo?.toIso8601String());
  writeNotNull(
      'date_on_sale_to_gmt', instance.dateOnSaleToGmt?.toIso8601String());
  writeNotNull('on_sale', instance.onSale);
  writeNotNull('status', instance.status);
  writeNotNull('purchasable', instance.purchasable);
  writeNotNull('virtual', instance.virtual);
  writeNotNull('downloadable', instance.downloadable);
  val['downloads'] = instance.downloads.map((e) => e.toJson()).toList();
  writeNotNull('download_limit', instance.downloadLimit);
  writeNotNull('download_expiry', instance.downloadExpiry);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('manage_stock', instance.manageStock);
  writeNotNull('stock_quantity', instance.stockQuantity);
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('backorders', instance.backorders);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('backordered', instance.backordered);
  val['attributes'] = instance.attributes.map((e) => e.toJson()).toList();
  writeNotNull('weight', instance.weight);
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('shipping_class_id', instance.shippingClassId);
  writeNotNull('menu_order', instance.menuOrder);
  val['dimensions'] = instance.dimensions.toJson();
  val['meta_data'] = instance.metaData.map((e) => e.toJson()).toList();
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('andromo_price_to_display', instance.andromoPriceToDisplay);
  writeNotNull('andromo_regular_price_to_display',
      instance.andromoRegularPriceToDisplay);
  writeNotNull('translations', instance.translations);
  writeNotNull('lang', instance.lang);
  return val;
}

WooProductVariationMetaData _$WooProductVariationMetaDataFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationMetaData(
      json['id'] as int?,
      json['key'] as String?,
      json['value'] as String,
    );

Map<String, dynamic> _$WooProductVariationMetaDataToJson(
    WooProductVariationMetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  val['value'] = instance.value;
  return val;
}

WooProductVariationCategory _$WooProductVariationCategoryFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationCategory(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$WooProductVariationCategoryToJson(
    WooProductVariationCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  return val;
}

WooProductVariationDimension _$WooProductVariationDimensionFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationDimension(
      json['length'] as String?,
      json['height'] as String?,
      json['width'] as String?,
    );

Map<String, dynamic> _$WooProductVariationDimensionToJson(
    WooProductVariationDimension instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('length', instance.length);
  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  return val;
}

WooProductVariationAttribute _$WooProductVariationAttributeFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationAttribute(
      json['id'] as int?,
      json['name'] as String?,
      json['option'] as String?,
    );

Map<String, dynamic> _$WooProductVariationAttributeToJson(
    WooProductVariationAttribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('option', instance.option);
  return val;
}

WooProductVariationDownload _$WooProductVariationDownloadFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationDownload(
      json['id'] as String?,
      json['name'] as String?,
      json['file'] as String?,
    );

Map<String, dynamic> _$WooProductVariationDownloadToJson(
    WooProductVariationDownload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('file', instance.file);
  return val;
}

WooProductVariationImage _$WooProductVariationImageFromJson(
        Map<String, dynamic> json) =>
    WooProductVariationImage(
      json['id'] as int?,
      json['src'] as String?,
      json['name'] as String?,
      json['alt'] as String?,
      DateTime.parse(json['date_created'] as String),
      DateTime.parse(json['date_created_g_m_t'] as String),
      DateTime.parse(json['date_modified'] as String),
      DateTime.parse(json['date_modified_g_m_t'] as String),
    );

Map<String, dynamic> _$WooProductVariationImageToJson(
    WooProductVariationImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['date_created'] = instance.dateCreated.toIso8601String();
  val['date_created_g_m_t'] = instance.dateCreatedGMT.toIso8601String();
  val['date_modified'] = instance.dateModified.toIso8601String();
  val['date_modified_g_m_t'] = instance.dateModifiedGMT.toIso8601String();
  writeNotNull('src', instance.src);
  writeNotNull('name', instance.name);
  writeNotNull('alt', instance.alt);
  return val;
}
