// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooTaxClass _$WooTaxClassFromJson(Map<String, dynamic> json) => WooTaxClass(
      slug: json['slug'] as String?,
      name: json['name'] as String?,
      links: json['links'] == null
          ? null
          : WooTaxClassLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooTaxClassToJson(WooTaxClass instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('slug', instance.slug);
  writeNotNull('name', instance.name);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooTaxClassLinks _$WooTaxClassLinksFromJson(Map<String, dynamic> json) =>
    WooTaxClassLinks(
      collection: (json['collection'] as List<dynamic>?)
          ?.map(
              (e) => WooTaxClassCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooTaxClassLinksToJson(WooTaxClassLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  return val;
}

WooTaxClassCollection _$WooTaxClassCollectionFromJson(
        Map<String, dynamic> json) =>
    WooTaxClassCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooTaxClassCollectionToJson(
    WooTaxClassCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
