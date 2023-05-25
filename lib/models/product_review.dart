import 'package:json_annotation/json_annotation.dart';

part 'product_review.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductReview {
  int? id;
  String? dateCreated;
  String? dateCreatedGmt;
  int? productId;
  String? status;
  String? reviewer;
  String? reviewerEmail;
  String? review;
  int? rating;
  bool? verified;
  Map<String, dynamic>? reviewerAvatarUrls;
  WooProductReviewLinks? links;

  WooProductReview({
    required int this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.productId,
    this.status,
    this.reviewer,
    this.reviewerEmail,
    this.review,
    this.rating,
    this.verified,
    this.reviewerAvatarUrls,
    this.links,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductReview.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductReviewToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductReviewLinks {
  List<WooProductReviewSelf>? self;
  List<WooProductReviewCollection>? collection;
  List<WooProductReviewUp>? up;

  WooProductReviewLinks({this.self, this.collection, this.up});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductReviewLinks.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewLinksFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductReviewLinksToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductReviewSelf {
  String? href;

  WooProductReviewSelf({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductReviewSelf.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewSelfFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductReviewSelfToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductReviewCollection {
  String? href;

  WooProductReviewCollection({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductReviewCollection.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewCollectionFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductReviewCollectionToJson(this);
}

// =========================================================

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooProductReviewUp {
  String? href;

  WooProductReviewUp({this.href});

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooProductReviewUp.fromJson(Map<String, dynamic> json) =>
      _$WooProductReviewUpFromJson(json);

  Map<String, dynamic> toJson() => _$WooProductReviewUpToJson(this);
}
