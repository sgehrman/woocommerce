// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_shipping_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductShippingClass _$WooProductShippingClassFromJson(
        Map<String, dynamic> json) =>
    WooProductShippingClass(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      count: json['count'] as int?,
      links: json['links'] == null
          ? null
          : WooProductShippingClassLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooProductShippingClassToJson(
    WooProductShippingClass instance) {
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
  writeNotNull('count', instance.count);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooProductShippingClassLinks _$WooProductShippingClassLinksFromJson(
        Map<String, dynamic> json) =>
    WooProductShippingClassLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) =>
              WooProductShippingClassSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => WooProductShippingClassCollection.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooProductShippingClassLinksToJson(
    WooProductShippingClassLinks instance) {
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

WooProductShippingClassSelf _$WooProductShippingClassSelfFromJson(
        Map<String, dynamic> json) =>
    WooProductShippingClassSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductShippingClassSelfToJson(
    WooProductShippingClassSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductShippingClassCollection _$WooProductShippingClassCollectionFromJson(
        Map<String, dynamic> json) =>
    WooProductShippingClassCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductShippingClassCollectionToJson(
    WooProductShippingClassCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
