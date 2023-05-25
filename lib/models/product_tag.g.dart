// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductTag _$WooProductTagFromJson(Map<String, dynamic> json) =>
    WooProductTag(
      id: json['id'] as int?,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      description: json['description'] as String?,
      count: json['count'] as int?,
      lLinks: json['l_links'] == null
          ? null
          : WooProductTagLinks.fromJson(
              json['l_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooProductTagToJson(WooProductTag instance) {
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
  writeNotNull('l_links', instance.lLinks?.toJson());
  return val;
}

WooProductTagLinks _$WooProductTagLinksFromJson(Map<String, dynamic> json) =>
    WooProductTagLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => WooProductTagSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) =>
              WooProductTagCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooProductTagLinksToJson(WooProductTagLinks instance) {
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

WooProductTagSelf _$WooProductTagSelfFromJson(Map<String, dynamic> json) =>
    WooProductTagSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductTagSelfToJson(WooProductTagSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductTagCollection _$WooProductTagCollectionFromJson(
        Map<String, dynamic> json) =>
    WooProductTagCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductTagCollectionToJson(
    WooProductTagCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
