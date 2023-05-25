// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductCategory _$WooProductCategoryFromJson(Map<String, dynamic> json) =>
    WooProductCategory(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      parent: json['parent'] as int?,
      description: json['description'] as String?,
      display: json['display'] as String?,
      image: json['image'] == null
          ? null
          : WooProductCategoryImage.fromJson(
              json['image'] as Map<String, dynamic>),
      menuOrder: json['menu_order'] as int?,
      count: json['count'] as int?,
      links: json['links'] == null
          ? null
          : WooProductCategoryLinks.fromJson(
              json['links'] as Map<String, dynamic>),
      translations: json['translations'] as Map<String, dynamic>?,
      lang: json['lang'] as String?,
    )..acf = json['acf'] as Map<String, dynamic>?;

Map<String, dynamic> _$WooProductCategoryToJson(WooProductCategory instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('parent', instance.parent);
  writeNotNull('description', instance.description);
  writeNotNull('display', instance.display);
  writeNotNull('acf', instance.acf);
  writeNotNull('image', instance.image?.toJson());
  writeNotNull('menu_order', instance.menuOrder);
  writeNotNull('count', instance.count);
  writeNotNull('links', instance.links?.toJson());
  writeNotNull('translations', instance.translations);
  writeNotNull('lang', instance.lang);
  return val;
}

WooProductCategoryImage _$WooProductCategoryImageFromJson(
        Map<String, dynamic> json) =>
    WooProductCategoryImage(
      id: json['id'] as int?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      src: json['src'] as String?,
      name: json['name'] as String?,
      alt: json['alt'] as String?,
    );

Map<String, dynamic> _$WooProductCategoryImageToJson(
    WooProductCategoryImage instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('src', instance.src);
  writeNotNull('name', instance.name);
  writeNotNull('alt', instance.alt);
  return val;
}

WooProductCategoryLinks _$WooProductCategoryLinksFromJson(
        Map<String, dynamic> json) =>
    WooProductCategoryLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map(
              (e) => WooProductCategorySelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) =>
              WooProductCategoryCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooProductCategoryLinksToJson(
    WooProductCategoryLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  return val;
}

WooProductCategorySelf _$WooProductCategorySelfFromJson(
        Map<String, dynamic> json) =>
    WooProductCategorySelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductCategorySelfToJson(
    WooProductCategorySelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductCategoryCollection _$WooProductCategoryCollectionFromJson(
        Map<String, dynamic> json) =>
    WooProductCategoryCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductCategoryCollectionToJson(
    WooProductCategoryCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
