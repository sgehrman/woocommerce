// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_rate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooTaxRate _$WooTaxRateFromJson(Map<String, dynamic> json) => WooTaxRate(
      id: json['id'] as int?,
      country: json['country'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      city: json['city'] as String?,
      rate: json['rate'] as String?,
      name: json['name'] as String?,
      priority: json['priority'] as int?,
      compound: json['compound'] as bool?,
      shipping: json['shipping'] as bool?,
      order: json['order'] as int?,
      taxClass: json['tax_class'] as String?,
      links: json['links'] == null
          ? null
          : WooTaxRateLinks.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooTaxRateToJson(WooTaxRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('country', instance.country);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('city', instance.city);
  writeNotNull('rate', instance.rate);
  writeNotNull('name', instance.name);
  writeNotNull('priority', instance.priority);
  writeNotNull('compound', instance.compound);
  writeNotNull('shipping', instance.shipping);
  writeNotNull('order', instance.order);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooTaxRateLinks _$WooTaxRateLinksFromJson(Map<String, dynamic> json) =>
    WooTaxRateLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => WooTaxRateSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => WooTaxRateCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooTaxRateLinksToJson(WooTaxRateLinks instance) {
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

WooTaxRateSelf _$WooTaxRateSelfFromJson(Map<String, dynamic> json) =>
    WooTaxRateSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooTaxRateSelfToJson(WooTaxRateSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooTaxRateCollection _$WooTaxRateCollectionFromJson(
        Map<String, dynamic> json) =>
    WooTaxRateCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooTaxRateCollectionToJson(
    WooTaxRateCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
