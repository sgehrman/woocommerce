// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooOrder _$WooOrderFromJson(Map<String, dynamic> json) => WooOrder(
      id: json['id'] as int,
      parentId: json['parent_id'] as int?,
      number: json['number'] as String?,
      orderKey: json['order_key'] as String?,
      createdVia: json['created_via'] as String?,
      version: json['version'] as String?,
      status: json['status'] as String?,
      currency: json['currency'] as String?,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      dateModified: json['date_modified'] as String?,
      dateModifiedGmt: json['date_modified_gmt'] as String?,
      discountTotal: json['discount_total'] as String?,
      discountTax: json['discount_tax'] as String?,
      shippingTotal: json['shipping_total'] as String?,
      shippingTax: json['shipping_tax'] as String?,
      cartTax: json['cart_tax'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      pricesIncludeTax: json['prices_include_tax'] as bool?,
      customerId: json['customer_id'] as int?,
      customerIpAddress: json['customer_ip_address'] as String?,
      customerUserAgent: json['customer_user_agent'] as String?,
      customerNote: json['customer_note'] as String?,
      billing: json['billing'] == null
          ? null
          : Billing.fromJson(json['billing'] as Map<String, dynamic>),
      shipping: json['shipping'] == null
          ? null
          : Shipping.fromJson(json['shipping'] as Map<String, dynamic>),
      paymentMethod: json['payment_method'] as String?,
      paymentMethodTitle: json['payment_method_title'] as String?,
      transactionId: json['transaction_id'] as String?,
      datePaid: json['date_paid'] as String?,
      datePaidGmt: json['date_paid_gmt'] as String?,
      dateCompleted: json['date_completed'] as String?,
      dateCompletedGmt: json['date_completed_gmt'] as String?,
      cartHash: json['cart_hash'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      lineItems: (json['line_items'] as List<dynamic>?)
          ?.map((e) => LineItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      taxLines: (json['tax_lines'] as List<dynamic>?)
          ?.map((e) => TaxLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      shippingLines: (json['shipping_lines'] as List<dynamic>?)
          ?.map((e) => ShippingLines.fromJson(e as Map<String, dynamic>))
          .toList(),
      feeLines: (json['fee_lines'] as List<dynamic>?)
          ?.map((e) => WooOrderFeeLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      couponLines: (json['coupon_lines'] as List<dynamic>?)
          ?.map((e) => WooOrderCouponLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      refunds: (json['refunds'] as List<dynamic>?)
          ?.map((e) => Refunds.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: json['links'] == null
          ? null
          : Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooOrderToJson(WooOrder instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('parent_id', instance.parentId);
  writeNotNull('number', instance.number);
  writeNotNull('order_key', instance.orderKey);
  writeNotNull('created_via', instance.createdVia);
  writeNotNull('version', instance.version);
  writeNotNull('status', instance.status);
  writeNotNull('currency', instance.currency);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('date_modified', instance.dateModified);
  writeNotNull('date_modified_gmt', instance.dateModifiedGmt);
  writeNotNull('discount_total', instance.discountTotal);
  writeNotNull('discount_tax', instance.discountTax);
  writeNotNull('shipping_total', instance.shippingTotal);
  writeNotNull('shipping_tax', instance.shippingTax);
  writeNotNull('cart_tax', instance.cartTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('prices_include_tax', instance.pricesIncludeTax);
  writeNotNull('customer_id', instance.customerId);
  writeNotNull('customer_ip_address', instance.customerIpAddress);
  writeNotNull('customer_user_agent', instance.customerUserAgent);
  writeNotNull('customer_note', instance.customerNote);
  writeNotNull('billing', instance.billing?.toJson());
  writeNotNull('shipping', instance.shipping?.toJson());
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_title', instance.paymentMethodTitle);
  writeNotNull('transaction_id', instance.transactionId);
  writeNotNull('date_paid', instance.datePaid);
  writeNotNull('date_paid_gmt', instance.datePaidGmt);
  writeNotNull('date_completed', instance.dateCompleted);
  writeNotNull('date_completed_gmt', instance.dateCompletedGmt);
  writeNotNull('cart_hash', instance.cartHash);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e.toJson()).toList());
  writeNotNull('tax_lines', instance.taxLines?.map((e) => e.toJson()).toList());
  writeNotNull('shipping_lines',
      instance.shippingLines?.map((e) => e.toJson()).toList());
  writeNotNull('fee_lines', instance.feeLines?.map((e) => e.toJson()).toList());
  writeNotNull(
      'coupon_lines', instance.couponLines?.map((e) => e.toJson()).toList());
  writeNotNull('refunds', instance.refunds?.map((e) => e.toJson()).toList());
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooOrderCouponLine _$WooOrderCouponLineFromJson(Map<String, dynamic> json) =>
    WooOrderCouponLine(
      json['id'] as int?,
      json['code'] as String?,
      json['discount'] as String?,
      json['discount_tax'] as String?,
      (json['meta_data'] as List<dynamic>)
          .map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooOrderCouponLineToJson(WooOrderCouponLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('discount', instance.discount);
  writeNotNull('discount_tax', instance.discountTax);
  val['meta_data'] = instance.metaData.map((e) => e.toJson()).toList();
  return val;
}

WooOrderFeeLine _$WooOrderFeeLineFromJson(Map<String, dynamic> json) =>
    WooOrderFeeLine(
      json['id'] as int?,
      json['name'] as String?,
      json['tax_class'] as String?,
      json['tax_status'] as String?,
      json['total_tax'] as String?,
      (json['taxes'] as List<dynamic>)
          .map((e) => FeeLineTax.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['meta_data'] as List<dynamic>)
          .map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..total = json['total'] as String?;

Map<String, dynamic> _$WooOrderFeeLineToJson(WooOrderFeeLine instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('tax_status', instance.taxStatus);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  val['taxes'] = instance.taxes.map((e) => e.toJson()).toList();
  val['meta_data'] = instance.metaData.map((e) => e.toJson()).toList();
  return val;
}

FeeLineTax _$FeeLineTaxFromJson(Map<String, dynamic> json) => FeeLineTax(
      id: json['id'] as int?,
      rateCode: json['rate_code'] as String?,
      rateId: json['rate_id'] as String?,
      label: json['label'] as String?,
      compound: json['compound'] as bool?,
      taxTotal: json['tax_total'] as String?,
      shippingTaxTotal: json['shipping_tax_total'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FeeLineTaxToJson(FeeLineTax instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate_code', instance.rateCode);
  writeNotNull('rate_id', instance.rateId);
  writeNotNull('label', instance.label);
  writeNotNull('compound', instance.compound);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  return val;
}

Billing _$BillingFromJson(Map<String, dynamic> json) => Billing(
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

Map<String, dynamic> _$BillingToJson(Billing instance) {
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

Shipping _$ShippingFromJson(Map<String, dynamic> json) => Shipping(
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

Map<String, dynamic> _$ShippingToJson(Shipping instance) {
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

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      id: json['id'] as int?,
      key: json['key'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('key', instance.key);
  writeNotNull('value', instance.value);
  return val;
}

Refunds _$RefundsFromJson(Map<String, dynamic> json) => Refunds(
      id: json['id'] as int?,
      reason: json['reason'] as String?,
      total: json['total'] as String?,
    );

Map<String, dynamic> _$RefundsToJson(Refunds instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('reason', instance.reason);
  writeNotNull('total', instance.total);
  return val;
}

LineItems _$LineItemsFromJson(Map<String, dynamic> json) => LineItems(
      id: json['id'] as int?,
      name: json['name'] as String?,
      productId: json['product_id'] as int?,
      variationId: json['variation_id'] as int?,
      quantity: json['quantity'] as int?,
      taxClass: json['tax_class'] as String?,
      subtotal: json['subtotal'] as String?,
      subtotalTax: json['subtotal_tax'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => Taxes.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
      sku: json['sku'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$LineItemsToJson(LineItems instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('name', instance.name);
  writeNotNull('product_id', instance.productId);
  writeNotNull('variation_id', instance.variationId);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('tax_class', instance.taxClass);
  writeNotNull('subtotal', instance.subtotal);
  writeNotNull('subtotal_tax', instance.subtotalTax);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes', instance.taxes?.map((e) => e.toJson()).toList());
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  writeNotNull('sku', instance.sku);
  writeNotNull('price', instance.price);
  return val;
}

Taxes _$TaxesFromJson(Map<String, dynamic> json) => Taxes(
      id: json['id'] as int?,
      total: json['total'] as String?,
      subtotal: json['subtotal'] as String?,
    );

Map<String, dynamic> _$TaxesToJson(Taxes instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('total', instance.total);
  writeNotNull('subtotal', instance.subtotal);
  return val;
}

TaxLines _$TaxLinesFromJson(Map<String, dynamic> json) => TaxLines(
      id: json['id'] as int?,
      rateCode: json['rate_code'] as String?,
      rateId: json['rate_id'] as int?,
      label: json['label'] as String?,
      compound: json['compound'] as bool?,
      taxTotal: json['tax_total'] as String?,
      shippingTaxTotal: json['shipping_tax_total'] as String?,
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TaxLinesToJson(TaxLines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('rate_code', instance.rateCode);
  writeNotNull('rate_id', instance.rateId);
  writeNotNull('label', instance.label);
  writeNotNull('compound', instance.compound);
  writeNotNull('tax_total', instance.taxTotal);
  writeNotNull('shipping_tax_total', instance.shippingTaxTotal);
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  return val;
}

ShippingLines _$ShippingLinesFromJson(Map<String, dynamic> json) =>
    ShippingLines(
      id: json['id'] as int?,
      methodTitle: json['method_title'] as String?,
      methodId: json['method_id'] as String?,
      total: json['total'] as String?,
      totalTax: json['total_tax'] as String?,
      taxes: (json['taxes'] as List<dynamic>?)
          ?.map((e) => Taxes.fromJson(e as Map<String, dynamic>))
          .toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => MetaData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShippingLinesToJson(ShippingLines instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('method_title', instance.methodTitle);
  writeNotNull('method_id', instance.methodId);
  writeNotNull('total', instance.total);
  writeNotNull('total_tax', instance.totalTax);
  writeNotNull('taxes', instance.taxes?.map((e) => e.toJson()).toList());
  writeNotNull('meta_data', instance.metaData?.map((e) => e.toJson()).toList());
  return val;
}

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LinksToJson(Links instance) {
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

Self _$SelfFromJson(Map<String, dynamic> json) => Self(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$SelfToJson(Self instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

Collection _$CollectionFromJson(Map<String, dynamic> json) => Collection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$CollectionToJson(Collection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
