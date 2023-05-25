// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shipping_method.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooShippingMethod _$WooShippingMethodFromJson(Map<String, dynamic> json) =>
    WooShippingMethod(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$WooShippingMethodToJson(WooShippingMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  return val;
}

WooShippingMethodLocations _$WooShippingMethodLocationsFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodLocations(
      code: json['code'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$WooShippingMethodLocationsToJson(
    WooShippingMethodLocations instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('type', instance.type);
  return val;
}

WooShippingMethodMethods _$WooShippingMethodMethodsFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodMethods(
      freeShipping: (json['free_shipping'] as List<dynamic>?)
          ?.map((e) =>
              WooShippingMethodFreeShipping.fromJson(e as Map<String, dynamic>))
          .toList(),
      flatRate: (json['flat_rate'] as List<dynamic>?)
          ?.map((e) =>
              WooShippingMethodFlatRate.fromJson(e as Map<String, dynamic>))
          .toList(),
      localPickup: (json['local_pickup'] as List<dynamic>?)
          ?.map((e) =>
              WooShippingMethodLocalPickup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooShippingMethodMethodsToJson(
    WooShippingMethodMethods instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'free_shipping', instance.freeShipping?.map((e) => e.toJson()).toList());
  writeNotNull('flat_rate', instance.flatRate?.map((e) => e.toJson()).toList());
  writeNotNull(
      'local_pickup', instance.localPickup?.map((e) => e.toJson()).toList());
  return val;
}

WooShippingMethodFreeShipping _$WooShippingMethodFreeShippingFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodFreeShipping(
      id: json['id'] as int?,
      title: json['title'] as String?,
      methodId: json['method_id'] as String?,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$WooShippingMethodFreeShippingToJson(
    WooShippingMethodFreeShipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('cost', instance.cost);
  return val;
}

WooShippingMethodFlatRate _$WooShippingMethodFlatRateFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodFlatRate(
      id: json['id'] as int?,
      title: json['title'] as String?,
      methodId: json['method_id'] as String?,
      cost: json['cost'] as String?,
      classCost: json['class_cost'] as String?,
      calculationType: json['calculation_type'] as String?,
      taxable: json['taxable'] as bool?,
      shippingClasses: (json['shipping_classes'] as List<dynamic>?)
          ?.map((e) => WooShippingMethodShippingClasses.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooShippingMethodFlatRateToJson(
    WooShippingMethodFlatRate instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('cost', instance.cost);
  writeNotNull('class_cost', instance.classCost);
  writeNotNull('calculation_type', instance.calculationType);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('shipping_classes',
      instance.shippingClasses?.map((e) => e.toJson()).toList());
  return val;
}

WooShippingMethodShippingClasses _$WooShippingMethodShippingClassesFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodShippingClasses(
      id: json['id'] as String?,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$WooShippingMethodShippingClassesToJson(
    WooShippingMethodShippingClasses instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('cost', instance.cost);
  return val;
}

WooShippingMethodLocalPickup _$WooShippingMethodLocalPickupFromJson(
        Map<String, dynamic> json) =>
    WooShippingMethodLocalPickup(
      id: json['id'] as int?,
      title: json['title'] as String?,
      methodId: json['method_id'] as String?,
      taxable: json['taxable'] as bool?,
      cost: json['cost'] as String?,
    );

Map<String, dynamic> _$WooShippingMethodLocalPickupToJson(
    WooShippingMethodLocalPickup instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('title', instance.title);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('taxable', instance.taxable);
  writeNotNull('cost', instance.cost);
  return val;
}
