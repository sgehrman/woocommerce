// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_attribute_term.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductAttributeTerm _$WooProductAttributeTermFromJson(
        Map<String, dynamic> json) =>
    WooProductAttributeTerm(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      menuOrder: json['menu_order'] as int?,
      count: json['count'] as int?,
      links: json['links'] == null
          ? null
          : WooProductAttributeTermLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooProductAttributeTermToJson(
    WooProductAttributeTerm instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('slug', instance.slug);
  writeNotNull('description', instance.description);
  writeNotNull('menu_order', instance.menuOrder);
  writeNotNull('count', instance.count);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooProductAttributeTermLinks _$WooProductAttributeTermLinksFromJson(
        Map<String, dynamic> json) =>
    WooProductAttributeTermLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) =>
              WooProductAttributeTermSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => WooProductAttributeTermCollection.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooProductAttributeTermLinksToJson(
    WooProductAttributeTermLinks instance) {
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

WooProductAttributeTermSelf _$WooProductAttributeTermSelfFromJson(
        Map<String, dynamic> json) =>
    WooProductAttributeTermSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductAttributeTermSelfToJson(
    WooProductAttributeTermSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductAttributeTermCollection _$WooProductAttributeTermCollectionFromJson(
        Map<String, dynamic> json) =>
    WooProductAttributeTermCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductAttributeTermCollectionToJson(
    WooProductAttributeTermCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
