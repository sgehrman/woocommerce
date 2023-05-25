// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooShippingZone _$WooShippingZoneFromJson(Map<String, dynamic> json) =>
    WooShippingZone(
      id: json['id'] as int?,
      name: json['name'] as String?,
      order: json['order'] as int?,
      links: json['links'] == null
          ? null
          : WooShippingZoneLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneToJson(WooShippingZone instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('order', instance.order);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooShippingZoneLinks _$WooShippingZoneLinksFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => WooShippingZoneSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) =>
              WooShippingZoneCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
      describedby: (json['describedby'] as List<dynamic>?)
          ?.map((e) => Describedby.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooShippingZoneLinksToJson(
    WooShippingZoneLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull(
      'describedby', instance.describedby?.map((e) => e.toJson()).toList());
  return val;
}

WooShippingZoneSelf _$WooShippingZoneSelfFromJson(Map<String, dynamic> json) =>
    WooShippingZoneSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneSelfToJson(WooShippingZoneSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooShippingZoneCollection _$WooShippingZoneCollectionFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneCollectionToJson(
    WooShippingZoneCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

Describedby _$DescribedbyFromJson(Map<String, dynamic> json) => Describedby(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$DescribedbyToJson(Describedby instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
