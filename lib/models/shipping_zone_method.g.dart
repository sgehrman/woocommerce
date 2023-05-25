// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_zone_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooShippingZoneMethod _$WooShippingZoneMethodFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethod(
      instanceId: json['instance_id'] as int?,
      title: json['title'] as String?,
      order: json['order'] as int?,
      enabled: json['enabled'] as bool?,
      methodId: json['method_id'] as String?,
      methodTitle: json['method_title'] as String?,
      methodDescription: json['method_description'] as String?,
      settings: json['settings'] == null
          ? null
          : WooShippingZoneMethodSettings.fromJson(
              json['settings'] as Map<String, dynamic>),
      links: json['links'] == null
          ? null
          : WooShippingZoneMethodLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneMethodToJson(
    WooShippingZoneMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('instance_id', instance.instanceId);
  writeNotNull('title', instance.title);
  writeNotNull('order', instance.order);
  writeNotNull('enabled', instance.enabled);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_description', instance.methodDescription);
  writeNotNull('settings', instance.settings?.toJson());
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooShippingZoneMethodSettings _$WooShippingZoneMethodSettingsFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodSettings(
      title: json['title'] == null
          ? null
          : WooShippingZoneMethodTitle.fromJson(
              json['title'] as Map<String, dynamic>),
      taxStatus: json['tax_status'] == null
          ? null
          : WooShippingZoneMethodTaxStatus.fromJson(
              json['tax_status'] as Map<String, dynamic>),
      cost: json['cost'] == null
          ? null
          : WooShippingZoneMethodCost.fromJson(
              json['cost'] as Map<String, dynamic>),
      classCosts: json['class_costs'] == null
          ? null
          : WooShippingZoneMethodClassCosts.fromJson(
              json['class_costs'] as Map<String, dynamic>),
      classCost92: json['class_cost92'] == null
          ? null
          : WooShippingZoneMethodClassCost92.fromJson(
              json['class_cost92'] as Map<String, dynamic>),
      classCost91: json['class_cost91'] == null
          ? null
          : WooShippingZoneMethodClassCost91.fromJson(
              json['class_cost91'] as Map<String, dynamic>),
      noClassCost: json['no_class_cost'] == null
          ? null
          : WooShippingZoneMethodNoClassCost.fromJson(
              json['no_class_cost'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : WooShippingZoneMethodType.fromJson(
              json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneMethodSettingsToJson(
    WooShippingZoneMethodSettings instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('title', instance.title?.toJson());
  writeNotNull('tax_status', instance.taxStatus?.toJson());
  writeNotNull('cost', instance.cost?.toJson());
  writeNotNull('class_costs', instance.classCosts?.toJson());
  writeNotNull('class_cost92', instance.classCost92?.toJson());
  writeNotNull('class_cost91', instance.classCost91?.toJson());
  writeNotNull('no_class_cost', instance.noClassCost?.toJson());
  writeNotNull('type', instance.type?.toJson());
  return val;
}

WooShippingZoneMethodTitle _$WooShippingZoneMethodTitleFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodTitle(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      titleDefault: json['title_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodTitleToJson(
    WooShippingZoneMethodTitle instance) {
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
  writeNotNull('title_default', instance.titleDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodTaxStatus _$WooShippingZoneMethodTaxStatusFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodTaxStatus(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      taxDefault: json['tax_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
      options: json['options'] == null
          ? null
          : WooShippingZoneMethodOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneMethodTaxStatusToJson(
    WooShippingZoneMethodTaxStatus instance) {
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
  writeNotNull('tax_default', instance.taxDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

WooShippingZoneMethodOptions _$WooShippingZoneMethodOptionsFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodOptions(
      taxable: json['taxable'] as String?,
      none: json['none'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodOptionsToJson(
    WooShippingZoneMethodOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('taxable', instance.taxable);
  writeNotNull('none', instance.none);
  return val;
}

WooShippingZoneMethodCost _$WooShippingZoneMethodCostFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodCost(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      costDefault: json['cost_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodCostToJson(
    WooShippingZoneMethodCost instance) {
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
  writeNotNull('cost_default', instance.costDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodClassCosts _$WooShippingZoneMethodClassCostsFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodClassCosts(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      classCostsDefault: json['class_costs_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodClassCostsToJson(
    WooShippingZoneMethodClassCosts instance) {
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
  writeNotNull('class_costs_default', instance.classCostsDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodClassCost92 _$WooShippingZoneMethodClassCost92FromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodClassCost92(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      classCost92Default: json['class_cost92_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodClassCost92ToJson(
    WooShippingZoneMethodClassCost92 instance) {
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
  writeNotNull('class_cost92_default', instance.classCost92Default);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodClassCost91 _$WooShippingZoneMethodClassCost91FromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodClassCost91(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      classCost91Default: json['class_cost91_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodClassCost91ToJson(
    WooShippingZoneMethodClassCost91 instance) {
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
  writeNotNull('class_cost91_default', instance.classCost91Default);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodNoClassCost _$WooShippingZoneMethodNoClassCostFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodNoClassCost(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      noClassCostDefault: json['no_class_cost_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodNoClassCostToJson(
    WooShippingZoneMethodNoClassCost instance) {
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
  writeNotNull('no_class_cost_default', instance.noClassCostDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  return val;
}

WooShippingZoneMethodType _$WooShippingZoneMethodTypeFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodType(
      id: json['id'] as String?,
      label: json['label'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      value: json['value'] as String?,
      typeDefault: json['type_default'] as String?,
      tip: json['tip'] as String?,
      placeholder: json['placeholder'] as String?,
      options: json['options'] == null
          ? null
          : WooShippingZoneMethodOptions.fromJson(
              json['options'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooShippingZoneMethodTypeToJson(
    WooShippingZoneMethodType instance) {
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
  writeNotNull('type_default', instance.typeDefault);
  writeNotNull('tip', instance.tip);
  writeNotNull('placeholder', instance.placeholder);
  writeNotNull('options', instance.options?.toJson());
  return val;
}

WooShippingZoneMethodLinks _$WooShippingZoneMethodLinksFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) =>
              WooShippingZoneMethodSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => WooShippingZoneMethodCollection.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      describes: (json['describes'] as List<dynamic>?)
          ?.map((e) => WooShippingZoneMethodDescribes.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooShippingZoneMethodLinksToJson(
    WooShippingZoneMethodLinks instance) {
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
      'describes', instance.describes?.map((e) => e.toJson()).toList());
  return val;
}

WooShippingZoneMethodSelf _$WooShippingZoneMethodSelfFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodSelfToJson(
    WooShippingZoneMethodSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooShippingZoneMethodCollection _$WooShippingZoneMethodCollectionFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodCollectionToJson(
    WooShippingZoneMethodCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooShippingZoneMethodDescribes _$WooShippingZoneMethodDescribesFromJson(
        Map<String, dynamic> json) =>
    WooShippingZoneMethodDescribes(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooShippingZoneMethodDescribesToJson(
    WooShippingZoneMethodDescribes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
