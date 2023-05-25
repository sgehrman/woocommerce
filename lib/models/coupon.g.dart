// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooCoupon _$WooCouponFromJson(Map<String, dynamic> json) => WooCoupon(
      id: json['id'] as int?,
      code: json['code'] as String?,
      amount: json['amount'] as String?,
      dateCreated: json['date_created'] == null
          ? null
          : DateTime.parse(json['date_created'] as String),
      dateCreatedGmt: json['date_created_gmt'] == null
          ? null
          : DateTime.parse(json['date_created_gmt'] as String),
      dateModified: json['date_modified'] == null
          ? null
          : DateTime.parse(json['date_modified'] as String),
      dateModifiedGmt: json['date_modified_gmt'] == null
          ? null
          : DateTime.parse(json['date_modified_gmt'] as String),
      discountType: json['discount_type'] as String?,
      description: json['description'] as String?,
      dateExpires: json['date_expires'] as String?,
      dateExpiresGmt: json['date_expires_gmt'] as String?,
      usageCount: json['usage_count'] as int?,
      individualUse: json['individual_use'] as bool?,
      productIds: (json['product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      excludedProductIds: (json['excluded_product_ids'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      usageLimit: json['usage_limit'] as int?,
      usageLimitPerUser: json['usage_limit_per_user'] as int?,
      limitUsageToXItems: json['limit_usage_to_x_items'] as int?,
      freeShipping: json['free_shipping'] as bool?,
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      excludedProductCategories:
          (json['excluded_product_categories'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList(),
      excludeSaleItems: json['exclude_sale_items'] as bool?,
      minimumAmount: json['minimum_amount'] as String?,
      maximumAmount: json['maximum_amount'] as String?,
      emailRestrictions: (json['email_restrictions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      usedBy:
          (json['used_by'] as List<dynamic>?)?.map((e) => e as String).toList(),
      metaData: (json['meta_data'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      lLinks: json['l_links'] == null
          ? null
          : WooCouponLinks.fromJson(json['l_links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooCouponToJson(WooCoupon instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('code', instance.code);
  writeNotNull('amount', instance.amount);
  writeNotNull('date_created', instance.dateCreated?.toIso8601String());
  writeNotNull('date_created_gmt', instance.dateCreatedGmt?.toIso8601String());
  writeNotNull('date_modified', instance.dateModified?.toIso8601String());
  writeNotNull(
      'date_modified_gmt', instance.dateModifiedGmt?.toIso8601String());
  writeNotNull('discount_type', instance.discountType);
  writeNotNull('description', instance.description);
  writeNotNull('date_expires', instance.dateExpires);
  writeNotNull('date_expires_gmt', instance.dateExpiresGmt);
  writeNotNull('usage_count', instance.usageCount);
  writeNotNull('individual_use', instance.individualUse);
  writeNotNull('product_ids', instance.productIds);
  writeNotNull('excluded_product_ids', instance.excludedProductIds);
  writeNotNull('usage_limit', instance.usageLimit);
  writeNotNull('usage_limit_per_user', instance.usageLimitPerUser);
  writeNotNull('limit_usage_to_x_items', instance.limitUsageToXItems);
  writeNotNull('free_shipping', instance.freeShipping);
  writeNotNull('product_categories', instance.productCategories);
  writeNotNull(
      'excluded_product_categories', instance.excludedProductCategories);
  writeNotNull('exclude_sale_items', instance.excludeSaleItems);
  writeNotNull('minimum_amount', instance.minimumAmount);
  writeNotNull('maximum_amount', instance.maximumAmount);
  writeNotNull('email_restrictions', instance.emailRestrictions);
  writeNotNull('used_by', instance.usedBy);
  writeNotNull('meta_data', instance.metaData);
  writeNotNull('l_links', instance.lLinks?.toJson());
  return val;
}

WooCouponLinks _$WooCouponLinksFromJson(Map<String, dynamic> json) =>
    WooCouponLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => Self.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) => Collection.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooCouponLinksToJson(WooCouponLinks instance) {
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

CouponMetadata _$CouponMetadataFromJson(Map<String, dynamic> json) =>
    CouponMetadata(
      key: json['key'] as String?,
      value: json['value'] as String?,
    )..id = json['id'] as int?;

Map<String, dynamic> _$CouponMetadataToJson(CouponMetadata instance) {
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
