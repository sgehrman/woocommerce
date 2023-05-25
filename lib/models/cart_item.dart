import 'package:json_annotation/json_annotation.dart';

part 'cart_item.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartItem {
  String? key;
  int? id;
  int? quantity;
  String? name;
  String? sku;
  String? permalink;
  List<WooCartItemImages>? images;
  String? price;
  String? linePrice;
  List<String>? variation;

  WooCartItem({
    this.key,
    this.id,
    this.quantity,
    this.name,
    this.sku,
    this.permalink,
    this.images,
    this.price,
    this.linePrice,
    this.variation,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItem.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemToJson(this);
}

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  fieldRename: FieldRename.snake,
)
class WooCartItemImages {
  String? id;
  String? src;
  String? thumbnail;
  bool? srcset;
  String? sizes;
  String? name;
  String? alt;

  WooCartItemImages({
    this.id,
    this.src,
    this.thumbnail,
    this.srcset,
    this.sizes,
    this.name,
    this.alt,
  });

  @override
  String toString() {
    return toJson().toString();
  }

  factory WooCartItemImages.fromJson(Map<String, dynamic> json) =>
      _$WooCartItemImagesFromJson(json);

  Map<String, dynamic> toJson() => _$WooCartItemImagesToJson(this);
}
