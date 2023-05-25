// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_zone_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooShippingZoneLocation _$WooShippingZoneLocationFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneLocation(
      code: json['code'] as String?,
      type: json['type'] as String?,
      links: json['links'] == null
          ? null
          : WooShippingZoneLocationLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneLocationToJson(
    WooShippingZoneLocation instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooShippingZoneLocationLinks _$WooShippingZoneLocationLinksFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneLocationLinks(
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => WooShippingZoneLocationCollection.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      describes: (json['describes'] as List<dynamic>?)
          ?.map((e) => WooShippingZoneLocationDescribes.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooShippingZoneLocationLinksToJson(
    WooShippingZoneLocationLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull(
      'describes', instance.describes?.map((e) => e.toJson()).toList());
  return val;
}

WooShippingZoneLocationCollection _$WooShippingZoneLocationCollectionFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneLocationCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneLocationCollectionToJson(
    WooShippingZoneLocationCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooShippingZoneLocationDescribes _$WooShippingZoneLocationDescribesFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneLocationDescribes(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneLocationDescribesToJson(
    WooShippingZoneLocationDescribes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
