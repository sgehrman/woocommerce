// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProduct _$WooProductFromJson(Map<String, dynamic> json) => WooProduct(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
      json['permalink'] as String?,
      json['type'] as String?,
      json['status'] as String?,
      json['featured'] as bool?,
      json['catalog_visibility'] as String?,
      json['description'] as String?,
      json['short_description'] as String?,
      json['sku'] as String?,
      json['price'] as String?,
      json['regular_price'] as String?,
      json['sale_price'] as String?,
      json['price_html'] as String?,
      json['on_sale'] as bool?,
      json['purchasable'] as bool?,
      json['total_sales'] as int?,
      json['virtual'] as bool?,
      json['downloadable'] as bool?,
      (json['downloads'] as List<dynamic>)
          .map((e) => WooProductDownload.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['download_limit'] as int?,
      json['download_expiry'] as int?,
      json['external_url'] as String?,
      json['button_text'] as String?,
      json['tax_status'] as String?,
      json['tax_class'] as String?,
      json['manage_stock'] as bool?,
      json['stock_quantity'] as int?,
      json['stock_status'] as String?,
      json['backorders'] as String?,
      json['backorders_allowed'] as bool?,
      json['backordered'] as bool?,
      json['sold_individually'] as bool?,
      json['weight'] as String?,
      WooProductDimension.fromJson(json['dimensions'] as Map<String, dynamic>),
      json['shipping_required'] as bool?,
      json['shipping_taxable'] as bool?,
      json['shipping_class'] as String?,
      json['shipping_class_id'] as int?,
      json['reviews_allowed'] as bool?,
      json['average_rating'] as String?,
      json['rating_count'] as int?,
      (json['related_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      (json['upsell_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      (json['cross_sell_ids'] as List<dynamic>?)?.map((e) => e as int).toList(),
      json['parent_id'] as int?,
      json['purchase_note'] as String?,
      (json['categories'] as List<dynamic>)
          .map((e) => WooProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tags'] as List<dynamic>)
          .map((e) => WooProductItemTag.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['images'] as List<dynamic>)
          .map((e) => WooProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['attributes'] as List<dynamic>)
          .map((e) =>
              WooProductItemAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['default_attributes'] as List<dynamic>)
          .map((e) =>
              WooProductDefaultAttribute.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['variations'] as List<dynamic>?)?.map((e) => e as int).toList(),
      (json['grouped_products'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      json['menu_order'] as int?,
      (json['meta_data'] as List<dynamic>)
          .map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['andromo_price_to_display'] as num?)?.toDouble(),
      (json['andromo_regular_price_to_display'] as num?)?.toDouble(),
      json['andromo_variation_max_price_to_display'] as String?,
      json['andromo_variation_min_price_to_display'] as String?,
      json['translations'] as Map<String, dynamic>?,
      json['lang'] as String?,
    );

Map<String, dynamic> _$WooProductToJson(WooProduct instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('permalink', instance.permalink);
  writeNotNull('type', instance.type);
  writeNotNull('status', instance.status);
  writeNotNull('featured', instance.featured);
  writeNotNull('catalog_visibility', instance.catalogVisibility);
  writeNotNull('description', instance.description);
  writeNotNull('short_description', instance.shortDescription);
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  writeNotNull('regular_price', instance.regularPrice);
  writeNotNull('sale_price', instance.salePrice);
  writeNotNull('price_html', instance.priceHtml);
  writeNotNull('on_sale', instance.onSale);
  writeNotNull('purchasable', instance.purchasable);
  writeNotNull('total_sales', instance.totalSales);
  writeNotNull('virtual', instance.virtual);
  writeNotNull('downloadable', instance.downloadable);
  val['downloads'] = instance.downloads.map((e) => e.toJson()).toList();
  writeNotNull('download_limit', instance.downloadLimit);
  writeNotNull('download_expiry', instance.downloadExpiry);
  writeNotNull('external_url', instance.externalUrl);
  writeNotNull('button_text', instance.buttonText);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('manage_stock', instance.manageStock);
  writeNotNull('stock_quantity', instance.stockQuantity);
  writeNotNull('stock_status', instance.stockStatus);
  writeNotNull('backorders', instance.backorders);
  writeNotNull('backorders_allowed', instance.backordersAllowed);
  writeNotNull('backordered', instance.backordered);
  writeNotNull('sold_individually', instance.soldIndividually);
  writeNotNull('weight', instance.weight);
  val['dimensions'] = instance.dimensions.toJson();
  writeNotNull('shipping_required', instance.shippingRequired);
  writeNotNull('shipping_taxable', instance.shippingTaxable);
  writeNotNull('shipping_class', instance.shippingClass);
  writeNotNull('shipping_class_id', instance.shippingClassId);
  writeNotNull('reviews_allowed', instance.reviewsAllowed);
  writeNotNull('average_rating', instance.averageRating);
  writeNotNull('rating_count', instance.ratingCount);
  writeNotNull('related_ids', instance.relatedIds);
  writeNotNull('upsell_ids', instance.upsellIds);
  writeNotNull('cross_sell_ids', instance.crossSellIds);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('purchase_note', instance.purchaseNote);
  val['categories'] = instance.categories.map((e) => e.toJson()).toList();
  val['tags'] = instance.tags.map((e) => e.toJson()).toList();
  val['images'] = instance.images.map((e) => e.toJson()).toList();
  val['attributes'] = instance.attributes.map((e) => e.toJson()).toList();
  val['default_attributes'] =
      instance.defaultAttributes.map((e) => e.toJson()).toList();
  writeNotNull('variations', instance.variations);
  writeNotNull('grouped_products', instance.groupedProducts);
  writeNotNull('menu_order', instance.menuOrder);
  val['meta_data'] = instance.metaData.map((e) => e.toJson()).toList();
  writeNotNull('andromo_price_to_display', instance.andromoPriceToDisplay);
  writeNotNull('andromo_regular_price_to_display',
      instance.andromoRegularPriceToDisplay);
  writeNotNull('andromo_variation_min_price_to_display',
      instance.andromoVariationMinPriceToDisplay);
  writeNotNull('andromo_variation_max_price_to_display',
      instance.andromoVariationMaxPriceToDisplay);
  writeNotNull('translations', instance.translations);
  writeNotNull('lang', instance.lang);
  return val;
}

WooProductItemTag _$WooProductItemTagFromJson(Map<String, dynamic> json) =>
    WooProductItemTag(
      json['id'] as int?,
      json['name'] as String?,
      json['slug'] as String?,
    );

Map<String, dynamic> _$WooProductItemTagToJson(WooProductItemTag instance) {
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

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      id: json['id'] as int?,
      key: json['key'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

WooProductDefaultAttribute _$WooProductDefaultAttributeFromJson(
        Map<String, dynamic> json) =>
    WooProductDefaultAttribute(
      json['id'] as int?,
      json['name'] as String?,
      json['option'] as String?,
    );

Map<String, dynamic> _$WooProductDefaultAttributeToJson(
    WooProductDefaultAttribute instance) {
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

WooProductImage _$WooProductImageFromJson(Map<String, dynamic> json) =>
    WooProductImage(
      json['id'] as int?,
      json['src'] as String?,
      json['name'] as String?,
      json['alt'] as String?,
      DateTime.parse(json['date_created'] as String),
      DateTime.parse(json['date_created_g_m_t'] as String),
      DateTime.parse(json['date_modified'] as String),
      DateTime.parse(json['date_modified_g_m_t'] as String),
    );

Map<String, dynamic> _$WooProductImageToJson(WooProductImage instance) {
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

WooProductDimension _$WooProductDimensionFromJson(Map<String, dynamic> json) =>
    WooProductDimension(
      json['length'] as String?,
      json['height'] as String?,
      json['width'] as String?,
    );

Map<String, dynamic> _$WooProductDimensionToJson(WooProductDimension instance) {
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

WooProductItemAttribute _$WooProductItemAttributeFromJson(
        Map<String, dynamic> json) =>
    WooProductItemAttribute(
      id: json['id'] as int?,
      name: json['name'] as String?,
      position: json['position'] as int?,
      visible: json['visible'] as bool?,
      variation: json['variation'] as bool?,
      options:
          (json['options'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$WooProductItemAttributeToJson(
    WooProductItemAttribute instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('position', instance.position);
  writeNotNull('visible', instance.visible);
  writeNotNull('variation', instance.variation);
  writeNotNull('options', instance.options);
  return val;
}

WooProductDownload _$WooProductDownloadFromJson(Map<String, dynamic> json) =>
    WooProductDownload(
      json['id'] as String?,
      json['name'] as String?,
      json['file'] as String?,
    );

Map<String, dynamic> _$WooProductDownloadToJson(WooProductDownload instance) {
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
