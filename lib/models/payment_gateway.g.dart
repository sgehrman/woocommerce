// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_gateway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooPaymentGateway _$WooPaymentGatewayFromJson(Map<String, dynamic> json) =>
    WooPaymentGateway(
      id: json['id'] as String,
      title: json['title'] as String?,
      description: json['description'] as String?,
      order: json['order'] as int?,
      enabled: json['enabled'] as bool?,
      methodTitle: json['method_title'] as String?,
      methodDescription: json['method_description'] as String?,
      methodSupports: (json['method_supports'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      settings: json['settings'] == null
          ? null
          : WooPaymentGatewaySettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      lLinks: json['l_links'] == null
          ? null
          : WooPaymentGatewayLinks.fromJson(
              json['l_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooPaymentGatewayToJson(WooPaymentGateway instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('order', instance.order);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_description', instance.methodDescription);
  writeNotNull('method_supports', instance.methodSupports);
  writeNotNull('settings', instance.settings?.toJson());
  writeNotNull('l_links', instance.lLinks?.toJson());
  return val;
}

WooPaymentGatewaySettings _$WooPaymentGatewaySettingsFromJson(
        Map<String, dynamic> json) =>
    WooPaymentGatewaySettings(
      title: json['title'] == null
          ? null
          : WooPaymentGatewayTitle.fromJson(
              json['title'] as Map<String, dynamic>),
      instructions: json['instructions'] == null
          ? null
          : WooPaymentGatewayTitle.fromJson(
              json['instructions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooPaymentGatewaySettingsToJson(
    WooPaymentGatewaySettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('instructions', instance.instructions?.toJson());
  return val;
}

WooPaymentGatewayTitle _$WooPaymentGatewayTitleFromJson(
        Map<String, dynamic> json) =>
    WooPaymentGatewayTitle(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      defaultvalue: json['defaultvalue'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooPaymentGatewayTitleToJson(
    WooPaymentGatewayTitle instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  writeNotNull('description', instance.description);
  writeNotNull('type', instance.type);
  writeNotNull('value', instance.value);
  writeNotNull('defaultvalue', instance.defaultvalue);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooPaymentGatewayLinks _$WooPaymentGatewayLinksFromJson(
        Map<String, dynamic> json) =>
    WooPaymentGatewayLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map(
              (e) => WooPaymentGatewaySelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) =>
              WooPaymentGatewayCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooPaymentGatewayLinksToJson(
    WooPaymentGatewayLinks instance) {
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

WooPaymentGatewaySelf _$WooPaymentGatewaySelfFromJson(
        Map<String, dynamic> json) =>
    WooPaymentGatewaySelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooPaymentGatewaySelfToJson(
    WooPaymentGatewaySelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooPaymentGatewayCollection _$WooPaymentGatewayCollectionFromJson(
        Map<String, dynamic> json) =>
    WooPaymentGatewayCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooPaymentGatewayCollectionToJson(
    WooPaymentGatewayCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
