// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_review.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WooProductReview _$WooProductReviewFromJson(Map<String, dynamic> json) =>
    WooProductReview(
      id: json['id'] as int,
      dateCreated: json['date_created'] as String?,
      dateCreatedGmt: json['date_created_gmt'] as String?,
      productId: json['product_id'] as int?,
      status: json['status'] as String?,
      reviewer: json['reviewer'] as String?,
      reviewerEmail: json['reviewer_email'] as String?,
      review: json['review'] as String?,
      rating: json['rating'] as int?,
      verified: json['verified'] as bool?,
      reviewerAvatarUrls: json['reviewer_avatar_urls'] as Map<String, dynamic>?,
      links: json['links'] == null
          ? null
          : WooProductReviewLinks.fromJson(
              json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WooProductReviewToJson(WooProductReview instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('date_created', instance.dateCreated);
  writeNotNull('date_created_gmt', instance.dateCreatedGmt);
  writeNotNull('product_id', instance.productId);
  writeNotNull('status', instance.status);
  writeNotNull('reviewer', instance.reviewer);
  writeNotNull('reviewer_email', instance.reviewerEmail);
  writeNotNull('review', instance.review);
  writeNotNull('rating', instance.rating);
  writeNotNull('verified', instance.verified);
  writeNotNull('reviewer_avatar_urls', instance.reviewerAvatarUrls);
  writeNotNull('links', instance.links?.toJson());
  return val;
}

WooProductReviewLinks _$WooProductReviewLinksFromJson(
        Map<String, dynamic> json) =>
    WooProductReviewLinks(
      self: (json['self'] as List<dynamic>?)
          ?.map((e) => WooProductReviewSelf.fromJson(e as Map<String, dynamic>))
          .toList(),
      collection: (json['collection'] as List<dynamic>?)
          ?.map((e) =>
              WooProductReviewCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
      up: (json['up'] as List<dynamic>?)
          ?.map((e) => WooProductReviewUp.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$WooProductReviewLinksToJson(
    WooProductReviewLinks instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('self', instance.self?.map((e) => e.toJson()).toList());
  writeNotNull(
      'collection', instance.collection?.map((e) => e.toJson()).toList());
  writeNotNull('up', instance.up?.map((e) => e.toJson()).toList());
  return val;
}

WooProductReviewSelf _$WooProductReviewSelfFromJson(
        Map<String, dynamic> json) =>
    WooProductReviewSelf(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductReviewSelfToJson(
    WooProductReviewSelf instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductReviewCollection _$WooProductReviewCollectionFromJson(
        Map<String, dynamic> json) =>
    WooProductReviewCollection(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductReviewCollectionToJson(
    WooProductReviewCollection instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}

WooProductReviewUp _$WooProductReviewUpFromJson(Map<String, dynamic> json) =>
    WooProductReviewUp(
      href: json['href'] as String?,
    );

Map<String, dynamic> _$WooProductReviewUpToJson(WooProductReviewUp instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('href', instance.href);
  return val;
}
