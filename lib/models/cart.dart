/*
 * BSD 3-Clause License

    Copyright (c) 2020, RAY OKAAH - MailTo: ray@flutterengineer.com, Twitter: Rayscode
    All rights reserved.

    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

    1. Redistributions of source code must retain the above copyright notice, this
    list of conditions and the following disclaimer.

    2. Redistributions in binary form must reproduce the above copyright notice,
    this list of conditions and the following disclaimer in the documentation
    and/or other materials provided with the distribution.

    3. Neither the name of the copyright holder nor the names of its
    contributors may be used to endorse or promote products derived from
    this software without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
    AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
    IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
    FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
    DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
    SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
    CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
    OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
    OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

 */

import 'package:woocommerce/utilities/woo_price_formatter.dart';

class WooCart {
  WooCartTotals totals;
  int? itemCount;
  List<WooCartItems> items;
  bool? needsShipping;
  bool? needsPayment;
  bool? hasCalculatedShipping;
  String? totalPrice;
  int? totalWeight;

  WooCart(
      {required this.totals,
      this.itemCount,
      required this.items,
      this.needsShipping,
      this.needsPayment,
      this.hasCalculatedShipping,
      this.totalPrice,
      this.totalWeight});

  factory WooCart.fromJson(Map<String, dynamic> json) {
    final items = <WooCartItems>[];
    if (json['items'] != null) {
      json['items'].forEach((v) {
        items.add(new WooCartItems.fromJson(v));
      });
    }

    return WooCart(
      totals: WooCartTotals.fromJson(json['totals']),
      items: items,
      itemCount: json['items_count'],
      needsShipping: json['needs_shipping'],
      needsPayment: json['needs_payment'],
      hasCalculatedShipping: json['has_calculated_shipping'],
      totalPrice: json['total_price'].toString(),
      totalWeight: json['total_weight'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['totals'] = this.totals;
    data['items_count'] = this.itemCount;
    data['items'] = this.items.map((v) => v.toJson()).toList();
    data['needs_shipping'] = this.needsShipping;
    data['needs_payment'] = this.needsPayment;
    data['has_calculated_shipping'] = this.hasCalculatedShipping;
    data['total_price'] = this.totalPrice;
    data['total_weight'] = this.totalWeight;
    return data;
  }

  @override
  toString() => this.toJson().toString();
}

class WooCartItems {
  String? key;
  int? id;
  int? quantity;
  int? quantityLimit;
  String? name;
  String? sku;
  String? permalink;
  List<WooCartImages>? images;
  String? price;
  WooCartItemPrices? prices;
  WooCartItemTotals? totals;
  String? linePrice;
  List<WooCartItemAttributes>? variation;

  WooCartItems(
      {this.key,
      this.id,
      this.quantity,
      this.quantityLimit,
      this.name,
      this.sku,
      this.permalink,
      this.images,
      this.price,
      this.linePrice,
      this.variation});

  WooCartItems.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    id = json['id'];
    quantity = json['quantity'];
    quantityLimit = json['quantity_limit'];
    name = json['name'];
    sku = json['sku'];
    permalink = json['permalink'];
    if (json['images'] != null) {
      images = <WooCartImages>[];
      json['images'].forEach((v) {
        images!.add(new WooCartImages.fromJson(v));
      });
    }
    price = json['price'];
    prices = WooCartItemPrices.fromJson(json['prices']);
    totals = WooCartItemTotals.fromJson(json['totals']);
    linePrice = json['line_price'];

    if (json['variation'] != null) {
      variation = <WooCartItemAttributes>[];
      json['variation'].forEach((v) {
        variation!.add(new WooCartItemAttributes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['key'] = this.key;
    data['id'] = this.id;
    data['quantity'] = this.quantity;
    data['name'] = this.name;
    data['sku'] = this.sku;
    data['permalink'] = this.permalink;
    if (this.images != null) {
      data['images'] = this.images!.map((v) => v.toJson()).toList();
    }
    data['price'] = this.price;
    data['line_price'] = this.linePrice;
    data['variation'] = this.variation;
    return data;
  }
}

class WooCartImages {
  String? id;
  String? src;
  String? thumbnail;
  String? srcset;
  String? sizes;
  String? name;
  String? alt;

  WooCartImages({this.id, this.src, this.thumbnail, this.srcset, this.sizes, this.name, this.alt});

  WooCartImages.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    src = json['src'];
    thumbnail = json['thumbnail'];
    srcset = json['srcset'].toString();
    sizes = json['sizes'];
    name = json['name'];
    alt = json['alt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['src'] = this.src;
    data['thumbnail'] = this.thumbnail;
    data['srcset'] = this.srcset;
    data['sizes'] = this.sizes;
    data['name'] = this.name;
    data['alt'] = this.alt;
    return data;
  }
}

class WooCartTotals {
  int? totalItems;
  int? totalPrice;
  String? currencyCode;
  int? currencyMinorUnit;

  WooCartTotals({this.totalItems, this.totalPrice, this.currencyCode, this.currencyMinorUnit});

  String? get displayTotalPrice => WooPriceFormatter.displayPrice(totalPrice, currencyMinorUnit);

  factory WooCartTotals.fromJson(Map<String, dynamic>? json) {
    return WooCartTotals(
      totalItems: int.tryParse(json?['total_items']),
      totalPrice: int.tryParse(json?['total_price']),
      currencyCode: json?['currency_code'],
      currencyMinorUnit: json?['currency_minor_unit'],
    );
  }
}

class WooCartItemAttributes {
  final String? attribute;
  final String? value;

  WooCartItemAttributes({
    required this.attribute,
    required this.value,
  });

  factory WooCartItemAttributes.fromJson(Map<String, dynamic>? json) {
    return WooCartItemAttributes(
      attribute: json?['attribute'],
      value: json?['value'],
    );
  }
}

class WooCartItemPrices {
  final int? price;
  final int? regularPrice;
  final int? salePrice;
  final String? currencyCode;
  final int? currencyMinorUnit;

  WooCartItemPrices({this.price, this.regularPrice, this.salePrice, this.currencyCode, this.currencyMinorUnit});

  factory WooCartItemPrices.fromJson(Map<String, dynamic>? json) {
    return WooCartItemPrices(
      price: int.tryParse(json?['price']),
      regularPrice: int.tryParse(json?['regular_price']),
      salePrice: int.tryParse(json?['sale_price']),
      currencyCode: json?['currency_code'],
      currencyMinorUnit: json?['currency_minor_unit'],
    );
  }

  String? get displayPrice => WooPriceFormatter.displayPrice(price, currencyMinorUnit);

  String? get displayRegularPrice => WooPriceFormatter.displayPrice(regularPrice, currencyMinorUnit);

  String? get displaySalePrice => WooPriceFormatter.displayPrice(salePrice, currencyMinorUnit);
}

class WooCartItemTotals {
  final int? lineSubtotal;
  final int? lineTotal;
  final String? currencyCode;
  final int? currencyMinorUnit;

  WooCartItemTotals({this.lineSubtotal, this.lineTotal, this.currencyCode, this.currencyMinorUnit});

  factory WooCartItemTotals.fromJson(Map<String, dynamic>? json) {
    return WooCartItemTotals(
      lineSubtotal: int.tryParse(json?['line_subtotal']),
      lineTotal: int.tryParse(json?['line_total']),
      currencyCode: json?['currency_code'],
      currencyMinorUnit: json?['currency_minor_unit'],
    );
  }

  String? get displayLineTotal => WooPriceFormatter.displayPrice(lineTotal, currencyMinorUnit);

  String? get displayLineSubtotal => WooPriceFormatter.displayPrice(lineSubtotal, currencyMinorUnit);
}
