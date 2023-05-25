// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooOrderPayload _$WooOrderPayloadFromJson(Map<String, dynamic> json) =>
    WooOrderPayload(
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      setPaid: json['set_paid'] as bool?,
      status: json['status'] as String?,
      currency: json['currency'] as String?,
      customerId: json['customer_id'] as int?,
      customerNote: json['customer_note'] as String?,
      parentId: json['parent_id'] as int?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) =>
              WooOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      feeLines: (json['fee_lines'] as List<dynamic>?)
          ?.map((e) =>
              WooOrderPayloadFeeLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponLines: (json['coupon_lines'] as List<dynamic>?)
          ?.map((e) =>
              WooOrderPayloadCouponLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      billing: json['billing'] == null
          ? null
          : WooOrderPayloadBilling.fromJson(
              json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : WooOrderPayloadShipping.fromJson(
              json['shipping'] as Map<String, dynamic>),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      lang: json['lang'] as String?,
    );

Map<String, dynamic> _$WooOrderPayloadToJson(WooOrderPayload instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_title', instance.paymentMethodTitle);
  writeNotNull('set_paid', instance.setPaid);
  writeNotNull('status', instance.status);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer_note', instance.customerNote);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull('fee_lines', instance.feeLines?.map((e) => e.toJson()).toList());
  writeNotNull(
      'coupon_lines', instance.couponLines?.map((e) => e.toJson()).toList());
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
  writeNotNull('lang', instance.lang);
  return val;
}

WooOrderPayloadMetaData _$WooOrderPayloadMetaDataFromJson(
        Map<String, dynamic> json) =>
    WooOrderPayloadMetaData(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$WooOrderPayloadMetaDataToJson(
    WooOrderPayloadMetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

WooOrderPayloadFeeLines _$WooOrderPayloadFeeLinesFromJson(
        Map<String, dynamic> json) =>
    WooOrderPayloadFeeLines(
      name: json['name'] as String?,
      taxClass: json['tax_class'] as String?,
      taxStatus: json['tax_status'] as String?,
      total: json['total'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) =>
              WooOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooOrderPayloadFeeLinesToJson(
    WooOrderPayloadFeeLines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('total', instance.total);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  return val;
}

WooOrderPayloadCouponLines _$WooOrderPayloadCouponLinesFromJson(
        Map<String, dynamic> json) =>
    WooOrderPayloadCouponLines(
      code: json['code'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) =>
              WooOrderPayloadMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooOrderPayloadCouponLinesToJson(
    WooOrderPayloadCouponLines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('code', instance.code);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  return val;
}

WooOrderPayloadBilling _$WooOrderPayloadBillingFromJson(
        Map<String, dynamic> json) =>
    WooOrderPayloadBilling(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
    );

Map<String, dynamic> _$WooOrderPayloadBillingToJson(
    WooOrderPayloadBilling instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  writeNotNull('email', instance.email);
  writeNotNull('phone', instance.phone);
  return val;
}

WooOrderPayloadShipping _$WooOrderPayloadShippingFromJson(
        Map<String, dynamic> json) =>
    WooOrderPayloadShipping(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      company: json['company'] as String?,
      address1: json['address1'] as String?,
      address2: json['address2'] as String?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      postcode: json['postcode'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$WooOrderPayloadShippingToJson(
    WooOrderPayloadShipping instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('first_name', instance.firstName);
  writeNotNull('last_name', instance.lastName);
  writeNotNull('company', instance.company);
  writeNotNull('address1', instance.address1);
  writeNotNull('address2', instance.address2);
  writeNotNull('city', instance.city);
  writeNotNull('state', instance.state);
  writeNotNull('postcode', instance.postcode);
  writeNotNull('country', instance.country);
  return val;
}

LineItems _$LineItemsFromJson(Map<String, dynamic> json) => LineItems(
      metaData: (json['meta_data'] as List<dynamic>)
          .map((e) => LineItemMetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      productId: json['product_id'] as int?,
      name: json['name'] as String?,
      variationId: json['variation_id'] as int?,
      taxClass: json['tax_class'] as String?,
      subtotal: json['subtotal'] as String?,
      total: json['total'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$LineItemsToJson(LineItems instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('product_id', instance.productId);
  writeNotNull('name', instance.name);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('total', instance.total);
  writeNotNull('quantity', instance.quantity);
  val['meta_data'] = instance.metaData.map((e) => e.toJson()).toList();
  return val;
}

ShippingLines _$ShippingLinesFromJson(Map<String, dynamic> json) =>
    ShippingLines(
      methodId: json['method_id'] as String?,
      methodTitle: json['method_title'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$ShippingLinesToJson(ShippingLines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('method_id', instance.methodId);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('total', instance.total);
  return val;
}

LineItemMetaData _$LineItemMetaDataFromJson(Map<String, dynamic> json) =>
    LineItemMetaData(
      key: json['key'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$LineItemMetaDataToJson(LineItemMetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}
