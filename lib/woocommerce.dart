library woocommerce;

import 'dart:collection';
import 'dart:convert';
import 'dart:core';
import 'dart:io';
import 'dart:math';

import 'package:crypto/crypto.dart' as crypto;
import 'package:http/http.dart' as http;
import 'package:woocommerce/constants/constants.dart';
import 'package:woocommerce/models/cart.dart';
import 'package:woocommerce/models/cart_item.dart';
import 'package:woocommerce/models/coupon.dart';
import 'package:woocommerce/models/customer.dart';
import 'package:woocommerce/models/customer_download.dart';
import 'package:woocommerce/models/jwt_response.dart';
import 'package:woocommerce/models/order.dart';
import 'package:woocommerce/models/order_payload.dart';
import 'package:woocommerce/models/payment_gateway.dart';
import 'package:woocommerce/models/product_attribute_term.dart';
import 'package:woocommerce/models/product_attributes.dart';
import 'package:woocommerce/models/product_category.dart';
import 'package:woocommerce/models/product_review.dart';
import 'package:woocommerce/models/product_shipping_class.dart';
import 'package:woocommerce/models/product_tag.dart';
import 'package:woocommerce/models/product_variation.dart';
import 'package:woocommerce/models/products.dart';
import 'package:woocommerce/models/shipping_method.dart';
import 'package:woocommerce/models/shipping_zone.dart';
import 'package:woocommerce/models/shipping_zone_location.dart';
import 'package:woocommerce/models/shipping_zone_method.dart';
//import 'models/shipping_zone_method.dart';
import 'package:woocommerce/models/tax_classes.dart';
import 'package:woocommerce/models/tax_rate.dart';
import 'package:woocommerce/models/user.dart';
import 'package:woocommerce/utilities/local_db.dart';
import 'package:woocommerce/woocommerce_error.dart';

export 'models/cart.dart' show WooCart;
export 'models/cart_item.dart' show WooCartItem;
export 'models/coupon.dart' show WooCoupon;
export 'models/customer.dart' show WooCustomer;
export 'models/jwt_response.dart' show WooJWTResponse;
export 'models/order.dart' show WooOrder;
export 'models/order_payload.dart' show WooOrderPayload;
export 'models/product_attribute_term.dart' show WooProductAttributeTerm;
export 'models/product_attributes.dart' show WooProductAttribute;
export 'models/product_category.dart' show WooProductCategory;
export 'models/product_review.dart' show WooProductReview;
export 'models/product_shipping_class.dart' show WooProductShippingClass;
export 'models/product_tag.dart' show WooProductTag;
export 'models/product_variation.dart' show WooProductVariation;
export 'models/products.dart' show WooProduct;
export 'models/shipping_method.dart' show WooShippingMethod;
export 'models/shipping_zone.dart' show WooShippingZone;
export 'models/shipping_zone_location.dart' show WooShippingZoneLocation;
export 'models/shipping_zone_method.dart' show WooShippingZoneMethod;
export 'models/tax_classes.dart' show WooTaxClass;
export 'models/tax_rate.dart' show WooTaxRate;
export 'models/user.dart' show WooUser;
export 'woocommerce_error.dart' show WooCommerceError;

/// Create a new Instance of [WooCommerce] and pass in the necessary parameters into the constructor.
///
/// For example
/// ``` WooCommerce myApi = WooCommerce(
///   baseUrl: yourbaseUrl, // For example  http://mywebsite.com or https://mywebsite.com or http://cs.mywebsite.com
///   consumerKey: consumerKey,
///  consumerSecret: consumerSecret);
///  ```

class WooCommerce {
  /// Parameter, [baseUrl] is the base url of your site. For example, http://me.com or https://me.com.
  late String baseUrl;

  /// Parameter [consumerKey] is the consumer key provided by WooCommerce, e.g. `ck_12abc34n56j`.
  String? consumerKey;

  /// Parameter [consumerSecret] is the consumer secret provided by WooCommerce, e.g. `cs_1uab8h3s3op`.
  String? consumerSecret;

  /// Returns if the website is https or not based on the [baseUrl] parameter.
  bool? isHttps;

  /// Parameter(Optional) [apiPath], tells the SDK if there is a different path to your api installation.
  /// Useful if the websites woocommerce api path have been modified.
  late String apiPath;

  /// Parameter(Optional) [isDebug], tells the library if it should _printToLog debug logs.
  /// Useful if you are debuging or in development.
  late bool isDebug;

  WooCommerce({
    required this.baseUrl,
    required this.consumerKey,
    required this.consumerSecret,
    this.apiPath = DEFAULT_WC_API_PATH,
    this.isDebug = false,
  }) {
    if (baseUrl.startsWith('https')) {
      isHttps = true;
    } else {
      isHttps = false;
    }
  }

  void _printToLog(String message) {
    if (isDebug) {
      print('WOOCOMMERCE LOG : $message');
    }
  }

  String? _authToken;
  String? get authToken => _authToken;
  String _wcstoreapi = '';
  String get wcStoreApi => _wcstoreapi;

  Uri? queryUri;
  String get apiResourceUrl => queryUri.toString();

  // Header to be sent for JWT authourization
  final Map<String, String> _urlHeader = {'Authorization': ''};
  String get urlHeader => _urlHeader['Authorization'] = 'Bearer ${authToken!}';
  final LocalDatabaseService _localDbService = LocalDatabaseService();

  /// HTTP Get Call to Woocommerce block STOREAPI CART module to get X-WC-Store-API-Nonce [wc_store_api]
  /// Sends Get Request with your Authorization JWT bearer [_token] string. to receive a renspose header
  /// header consists the logged in users X-WC-Store-API-Nonce
  ///
  /// Associated endpoint : yourwebsite.com/wp-json/wp-json/wc/store/cart
  ///
  Future<String> fetchXWCStoreAPINonce() async {
    _authToken = await _localDbService.getSecurityToken();
    _urlHeader['Authorization'] = 'Bearer ${_authToken!}';
    final response = await http.get(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart'),
      headers: _urlHeader,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final reponseHeader = response.headers;
      _wcstoreapi = reponseHeader['x-wc-store-api-nonce'] ?? '';

      _printToLog('["x-wc-store-api-nonce"] : $_wcstoreapi');

      return _wcstoreapi;
    } else {
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Authenticates the user using WordPress JWT authentication and returns the access [_token] string.
  ///
  /// Associated endpoint : yourwebsite.com/wp-json/jwt-auth/v1/token
  Future<String?> authenticateViaJWT({
    String? username,
    String? password,
  }) async {
    final body = {
      'username': username,
      'password': password,
    };

    final response = await http.post(
      Uri.parse(
        baseUrl + URL_JWT_TOKEN,
      ),
      body: body,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonMap = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      final WooJWTResponse authResponse = WooJWTResponse.fromJson(jsonMap);
      _authToken = authResponse.token;
      await _localDbService.updateSecurityToken(_authToken);
      _urlHeader['Authorization'] = 'Bearer ${authResponse.token}';

      return _authToken;
    } else {
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Authenticates the user via JWT and returns a WooCommerce customer object of the current logged in customer.
  Future<Object?>? loginCustomer({
    required String username,
    required String password,
  }) async {
    WooCustomer? customer;
    try {
      final response =
          await authenticateViaJWT(username: username, password: password);
      _printToLog('attempted token : $response');
      if (response is String) {
        final int? id = await fetchLoggedInUserId();
        customer = await getCustomerById(id: id);
      }

      return customer;
    } catch (e) {
      return e.toString();
    }
  }

  /// Confirm if a customer is logged in [true] or out [false].
  Future<bool> isCustomerLoggedIn() async {
    final String sToken = await _localDbService.getSecurityToken();
    if (sToken == '0') {
      return false;
    } else {
      return true;
    }
  }

  /// Fetches already authenticated user, using Jwt
  ///
  /// Associated endpoint : /wp-json/wp/v2/users/me
  Future<int?> fetchLoggedInUserId() async {
    _authToken = await _localDbService.getSecurityToken();
    _urlHeader['Authorization'] = 'Bearer ${_authToken!}';
    final response = await http.get(
      Uri.parse(baseUrl + URL_USER_ME),
      headers: _urlHeader,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      if (jsonStr.isEmpty) {
        Error.throwWithStackTrace(
          'No user found or you dont have permission.',
          StackTrace.current,
        );
      }
      _printToLog('account user fetch : $jsonStr');

      return jsonStr['id'] as int?;
    } else {
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Log User out
  ///
  Future<void> logUserOut() async {
    await _localDbService.deleteSecurityToken();
  }

  /// Creates a new Wordpress user and returns whether action was sucessful or not using WP Rest User Wordpress plugin.
  ///
  /// Associated endpoint : /register .

  Future<bool> registerNewWpUser({required WooUser user}) async {
    final String url = baseUrl + URL_REGISTER_ENDPOINT;

    final http.Client client = http.Client();
    final http.Request request = http.Request('POST', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
        'application/json; charset=utf-8';
    request.headers[HttpHeaders.cacheControlHeader] = 'no-cache';
    request.body = json.encode(user.toJson());
    final res = await client.send(request);
    final String response = await res.stream.bytesToString();

    final dataResponse = Map<String, dynamic>.from(
      json.decode(response) as Map<String, dynamic>? ?? {},
    );

    _printToLog('registerNewUser response : $dataResponse');
    if (dataResponse['data'] == null) {
      return true;
    } else {
      throw Exception(WooCommerceError.fromJson(dataResponse).toString());
    }
  }

  /// Creates a new Woocommerce Customer and returns the customer object.
  ///
  /// Accepts a customer object as required parameter.
  Future<bool> createCustomer(WooCustomer customer) async {
    _printToLog('Creating Customer With info : $customer');
    _setApiResourceUrl(path: 'customers');
    final response = await post(queryUri.toString(), customer.toJson());
    _printToLog('created customer : $response');

    // final cus = WooCustomer.fromJson(response);

    return true;

    //return WooCustomer.fromJson(response);
  }

  /// Returns a list of all [WooCustomer], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customers
  Future<List<WooCustomer>> getCustomers({
    int? page,
    int? perPage,
    String? search,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderBy,
    //String email,
    String? role,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      'exclude': exclude, 'include': include, 'offset': offset,
      'order': order, 'orderby': orderBy, //'email': email,
      'role': role,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });

    final List<WooCustomer> customers = [];
    _setApiResourceUrl(path: 'customers', queryParameters: payload);

    final response = await getList(queryUri.toString());
    _printToLog('response gotten : $response');
    for (final c in response) {
      final customer = WooCustomer.fromJson(c);
      _printToLog('customers here : $customer');
      customers.add(customer);
    }

    return customers;
  }

  /// Returns a [WooCustomer], whoose [id] is specified.
  Future<WooCustomer> getCustomerById({required int? id}) async {
    _setApiResourceUrl(
      path: 'customers/$id',
    );
    final response = await get(queryUri.toString());

    return WooCustomer.fromJson(response);
  }

  /// Returns a list of all [WooCustomerDownload], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customers
  Future<List<WooCustomerDownload>> getCustomerDownloads({
    required int customerId,
  }) async {
    final List<WooCustomerDownload> customerDownloads = [];
    _setApiResourceUrl(
      path: 'customers/$customerId/downloads',
    );

    final response = await getList(queryUri.toString());
    _printToLog('getting customer downloads : $response');
    for (final d in response) {
      final download = WooCustomerDownload.fromJson(d);
      _printToLog('download gotten here : $download');
      customerDownloads.add(download);
    }

    return customerDownloads;
  }

  /// Updates an existing Customer and returns the [WooCustomer] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customer-properties.

  Future<WooCustomer> oldUpdateCustomer({
    required WooCustomer wooCustomer,
  }) async {
    _printToLog(
      'Updating customer With customerId : ${wooCustomer.id}',
    );
    _setApiResourceUrl(
      path: 'customers/${wooCustomer.id}',
    );
    final response = await put(queryUri.toString(), wooCustomer.toJson());

    return WooCustomer.fromJson(response);
  }

  Future<WooCustomer> updateCustomer({
    required int id,
    Map<String, dynamic>? data,
  }) async {
    _printToLog('Updating customer With customerId : $id');
    _setApiResourceUrl(
      path: 'customers/$id',
    );
    final response = await put(queryUri.toString(), data);

    return WooCustomer.fromJson(response);
  }

  /// Deletes an existing Customer and returns the [WooCustomer] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#customer-properties.

  Future<WooCustomer> deleteCustomer({
    required int customerId,
    dynamic reassign,
  }) async {
    final Map<String, dynamic> data = {
      'force': true,
    };
    if (reassign != null) {
      data['reassign'] = reassign;
    }
    _printToLog('Deleting customer With customerId : $customerId');
    _setApiResourceUrl(
      path: 'customers/$customerId',
    );
    final response = await delete(queryUri.toString(), data);

    return WooCustomer.fromJson(response);
  }

  /// Returns a list of all [WooProduct], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#products.
  // ignore: long-parameter-list
  Future<List<WooProduct>> getProducts({
    int? page,
    int? perPage,
    String? search,
    String? after,
    String? before,
    String? order,
    String? orderBy,
    String? slug,
    String? status,
    String? type,
    String? sku,
    String? category,
    String? tag,
    String? shippingClass,
    String? attribute,
    String? attributeTerm,
    String? taxClass,
    String? minPrice,
    String? maxPrice,
    String? stockStatus,
    List<int>? exclude,
    List<int>? parentExclude,
    List<int>? include,
    List<int>? parent,
    int? offset,
    bool? featured,
    bool? onSale,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'slug': slug,
      'status': status,
      'type': type,
      'sku': sku,
      'featured': featured,
      'category': category,
      'tag': tag,
      'shipping_class': shippingClass,
      'attribute': attribute,
      'attribute_term': attributeTerm,
      'tax_class': taxClass,
      'on_sale': onSale,
      'min_price': minPrice,
      'max_price': maxPrice,
      'stock_status': stockStatus,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });

    _printToLog('Parameters: $payload');
    final List<WooProduct> products = [];
    _setApiResourceUrl(path: 'products', queryParameters: payload);
    final response = await getList(queryUri.toString());
    _printToLog('response gotten : $response');
    _printToLog('this is the queri uri : $queryUri');

    for (final p in response) {
      final prod = WooProduct.fromJson(p);
      _printToLog('product gotten here : ${prod.name}');
      products.add(prod);
    }

    return products;
  }

  /// Returns a [WooProduct], with the specified [id].
  Future<WooProduct> getProductById({required int id}) async {
    _setApiResourceUrl(
      path: 'products/$id',
    );
    final response = await get(queryUri.toString());

    return WooProduct.fromJson(response);
  }

  /// Returns a list of all [WooProductVariation], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-variations
  // ignore: long-parameter-list
  Future<List<WooProductVariation>> getProductVariations({
    required int productId,
    int? page,
    int? perPage,
    String? search,
    String? after,
    String? before,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderBy,
    List<int>? parent,
    List<int>? parentExclude,
    String? slug,
    String? status,
    String? sku,
    String? taxClass,
    bool? onSale,
    String? minPrice,
    String? maxPrice,
    String? stockStatus,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'slug': slug,
      'status': status,
      'sku': sku,
      'tax_class': taxClass,
      'on_sale': onSale,
      'min_price': minPrice,
      'max_price': maxPrice,
      'stock_status': stockStatus,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooProductVariation> productVariations = [];
    _setApiResourceUrl(
      path: 'products/$productId/variations',
      queryParameters: payload,
    );
    _printToLog('this is the curent path : $apiPath');
    final response = await getList(queryUri.toString());
    for (final v in response) {
      final prodv = WooProductVariation.fromJson(v);
      _printToLog('prod gotten here : $prodv');
      productVariations.add(prodv);
    }

    return productVariations;
  }

  /// Returns a [WooProductVariation], with the specified [productId] and [variationId].

  Future<WooProductVariation> getProductVariationById({
    required int productId,
    String? variationId,
  }) async {
    _setApiResourceUrl(
      path: 'products/$productId/variations/$variationId',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductVariation.fromJson(response);
  }

  /// Returns a List[WooProductVariation], with the specified [productId] only.

  Future<List<WooProductVariation>> getProductVariationsByProductId({
    required int productId,
  }) async {
    final List<WooProductVariation> productVariations = [];
    _setApiResourceUrl(
      path: 'products/$productId/variations/',
    );
    final response = await getList(queryUri.toString());

    for (final v in response) {
      final prodv = WooProductVariation.fromJson(v);
      _printToLog('prod gotten here : $prodv');
      productVariations.add(prodv);
    }

    return productVariations;
  }

  /// Returns a list of all [WooProductAttribute].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-attributes

  Future<List<WooProductAttribute>> getProductAttributes() async {
    final List<WooProductAttribute> productAttributes = [];
    _setApiResourceUrl(
      path: 'products/attributes',
    );
    final response = await getList(queryUri.toString());
    for (final a in response) {
      final att = WooProductAttribute.fromJson(a);
      _printToLog('prod gotten here : $att');
      productAttributes.add(att);
    }

    return productAttributes;
  }

  /// Returns a [WooProductAttribute], with the specified [attributeId].

  Future<WooProductAttribute> getProductAttributeById({
    required int attributeId,
  }) async {
    _setApiResourceUrl(
      path: 'products/attributes/$attributeId',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductAttribute.fromJson(response);
  }

  /// Returns a list of all [WooProductAttributeTerm], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-attribute-terms
  Future<List<WooProductAttributeTerm>> getProductAttributeTerms({
    required int attributeId,
    int? page,
    int? perPage,
    String? search,
    List<int>? exclude,
    List<int>? include,
    String? order,
    String? orderBy,
    bool? hideEmpty,
    int? parent,
    int? product,
    String? slug,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'exclude': exclude,
      'include': include,
      'order': order,
      'orderby': orderBy,
      'hide_empty': hideEmpty,
      'parent': parent,
      'product': product,
      'slug': slug,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooProductAttributeTerm> productAttributeTerms = [];
    _setApiResourceUrl(
      path: 'products/attributes/$attributeId/terms',
      queryParameters: payload,
    );
    final response = await getList(queryUri.toString());
    for (final t in response) {
      final term = WooProductAttributeTerm.fromJson(t);
      _printToLog('term gotten here : $term');
      productAttributeTerms.add(term);
    }

    return productAttributeTerms;
  }

  /// Returns a [WooProductAttributeTerm], with the specified [attributeId] and [termId].

  Future<WooProductAttributeTerm> getProductAttributeTermById({
    required int attributeId,
    String? termId,
  }) async {
    _setApiResourceUrl(
      path: 'products/attributes/$attributeId/terms/$termId',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductAttributeTerm.fromJson(response);
  }

  /// Returns a list of all [WooProductCategory], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-categories

  Future<List<WooProductCategory>> getProductCategories({
    int? page,
    int? perPage,
    String? search,
    //List<int> exclude,
    //List<int> include,
    String? order,
    String? orderBy,
    bool? hideEmpty,
    int? parent,
    int? product,
    String? slug,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      //'exclude': exclude, 'include': include,
      'order': order, 'orderby': orderBy, 'hide_empty': hideEmpty,
      'parent': parent,
      'product': product, 'slug': slug,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });

    final List<WooProductCategory> productCategories = [];
    _printToLog('payload : $payload');
    _setApiResourceUrl(path: 'products/categories', queryParameters: payload);
    _printToLog('this is the path : $apiPath');
    final response = await getList(queryUri.toString());
    for (final c in response) {
      final cat = WooProductCategory.fromJson(c);
      _printToLog('category gotten here : $cat');
      productCategories.add(cat);
    }

    return productCategories;
  }

  /// Returns a [WooProductCategory], with the specified [categoryId].

  Future<WooProductCategory> getProductCategoryById({
    required int categoryId,
  }) async {
    _setApiResourceUrl(
      path: 'products/categories/$categoryId',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductCategory.fromJson(response);
  }

  /// Returns a list of all [WooProductShippingClass], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-shipping-classes
  Future<List<WooProductShippingClass>> getProductShippingClasses({
    int? page,
    int? perPage,
    String? search,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderBy,
    bool? hideEmpty,
    int? product,
    String? slug,
  }) async {
    final Map<String, dynamic> payload = {};
    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'hide_empty': hideEmpty,
      'product': product,
      'slug': slug,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooProductShippingClass> productShippingClasses = [];
    _setApiResourceUrl(
      path: 'products/shipping_classes',
    );
    final response = await getList(queryUri.toString());
    _printToLog('response gotten : $response');
    for (final c in response) {
      final sClass = WooProductShippingClass.fromJson(c);
      _printToLog('prod gotten here : $sClass');
      productShippingClasses.add(sClass);
    }

    return productShippingClasses;
  }

  /// Returns a [WooProductShippingClass], with the specified [id].

  Future<WooProductShippingClass> getProductShippingClassById({
    required int id,
  }) async {
    _setApiResourceUrl(
      path: 'products/shipping_classes/$id',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductShippingClass.fromJson(response);
  }

  /// Returns a list of all [ProductTag], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-tags
  Future<List<WooProductTag>> getProductTags({
    int? page,
    int? perPage,
    String? search,
    //List<int> exclude,
    //List<int> include,
    int? offset,
    String? order,
    String? orderBy,
    bool? hideEmpty,
    int? product,
    String? slug,
  }) async {
    final Map<String, dynamic> payload = {};
    ({
      'page': page, 'per_page': perPage, 'search': search,
      // 'exclude': exclude, 'include': include,
      'offset': offset,
      'order': order, 'orderby': orderBy, 'hide_empty': hideEmpty,
      'product': product, 'slug': slug,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooProductTag> productTags = [];
    _printToLog('making request with payload : $payload');
    _setApiResourceUrl(path: 'products/tags', queryParameters: payload);
    final response = await getList(queryUri.toString());
    _printToLog('response gotten : $response');
    for (final c in response) {
      final tag = WooProductTag.fromJson(c);
      _printToLog('prod gotten here : $tag');
      productTags.add(tag);
    }

    return productTags;
  }

  /// Returns a [WooProductTag], with the specified [id].

  Future<WooProductTag> getProductTagById({required int id}) async {
    _setApiResourceUrl(
      path: 'products/tags/$id',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductTag.fromJson(response);
  }

  /// Returns a  [WooProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews
  Future<WooProductReview> createProductReview({
    required int productId,
    required String reviewer,
    required String reviewerEmail,
    required String review,
    int? status,
    int? rating,
    bool? verified,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'product_id': productId,
      'status': status,
      'reviewer': reviewer,
      'reviewer_email': reviewerEmail,
      'review': review,
      'rating': rating,
      'verified': verified,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });

    _setApiResourceUrl(
      path: 'products/reviews',
    );
    final response = await post(queryUri.toString(), payload);
    _printToLog('response gotten : $response');

    return WooProductReview.fromJson(response);
  }

  /// Returns a list of all [WooProductReview], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews
  Future<List<WooProductReview>> getProductReviews({
    int? page,
    int? perPage,
    String? search,
    String? after,
    String? before,
    //List<int> exclude,
    //List<int> include,
    int? offset,
    String? order,
    String? orderBy,
    List<int>? reviewer,
    //List<int> reviewerExclude,
    //List<String> reviewerEmail,
    List<int>? product,
    String? status,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page, 'per_page': perPage, 'search': search,
      'after': after, 'before': before,
      //'exclude': exclude, 'include': include,
      'offset': offset,
      'order': order, 'orderby': orderBy,
      'reviewer': reviewer,
      //'reviewer_exclude': reviewerExclude, 'reviewer_email': reviewerEmail,
      'product': product,
      'status': status,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v;
      }
    });
    final String meQueryPath = 'products/reviews${getQueryString(payload)}';
    final List<WooProductReview> productReviews = [];
    //_setApiResourceUrl(path: 'products/reviews', queryParameters: payload);
    final response = await getList(meQueryPath);
    _printToLog('response gotten : $response');
    for (final r in response) {
      final rev = WooProductReview.fromJson(r);
      _printToLog('reviews gotten here : $rev');
      productReviews.add(rev);
    }

    return productReviews;
  }

  /// Returns a [WooProductReview], with the specified [reviewId].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WooProductReview> getProductReviewById({required int reviewId}) async {
    _setApiResourceUrl(
      path: 'products/reviews/$reviewId',
    );
    final response = await get(queryUri.toString());
    _printToLog('response gotten : $response');

    return WooProductReview.fromJson(response);
  }

  /// Updates an existing Product Review and returns the [WooProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WooProductReview> updateProductReview({
    required WooProductReview productReview,
  }) async {
    _printToLog(
      'Updating product review With reviewId : ${productReview.id}',
    );
    _setApiResourceUrl(
      path: 'products/reviews/${productReview.id}',
    );
    final response = await put(queryUri.toString(), productReview.toJson());

    return WooProductReview.fromJson(response);
  }

  /// Deletes an existing Product Review and returns the [WooProductReview] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#product-reviews

  Future<WooProductReview> deleteProductReview({required int reviewId}) async {
    final Map<String, dynamic> data = {
      'force': true,
    };
    _printToLog(
      'Deleting product review With reviewId : $reviewId',
    );
    _setApiResourceUrl(
      path: 'products/review/$reviewId',
    );
    final response = await delete(queryUri.toString(), data);

    return WooProductReview.fromJson(response);
  }

  /**
  /// Accepts an int [id] of a product or product variation, int quantity, and an array of chosen variation attribute objects
  /// Related endpoint : wc/store/cart
  Future<WooCartItem>addToCart({@required int itemId, @required int quantity, List<WooProductVariation> variations}) async{
    Map<String, dynamic> data = {
      'id': itemId,
      'quantity' : quantity,
    };
    if(variations!=null) data['variations'] = variations;
    _setApiResourceUrl(path: 'cart/items', isShop: true);
    final response = await post(queryUri.toString(), data,);
    return WooCartItem.fromJson(response);
  }
  */

  /// Accepts an int [id] of a product or product variation, int quantity, and an array of chosen variation attribute objects
  /// Related endpoint : wc/store/cart/add-item
  ///

  Future<WooCartItem> addToMyCart({
    required String itemId,
    required String quantity,
    List<WooProductVariation>? variations,
  }) async {
    final Map<String, dynamic> data = {
      'id': itemId,
      'quantity': quantity,
    };
    if (variations != null) {
      data['variations'] = variations;
    }
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };
    final response = await http.post(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/add-item'),
      headers: urlHeader,
      body: data,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      _printToLog('added to my cart : $jsonStr');

      return WooCartItem.fromJson(jsonStr);
    } else {
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// List Cart Items
  /// GET /cart/items
  /// There are no parameters required for this endpoint.
  /// Returns a list of all [WooCartItem].
  /// Related endpoint : wc/store/cart/items

  Future<List<WooCartItem>> getMyCartItems() async {
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };
    final response = await http.get(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/items'),
      headers: urlHeader,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = List<Map<String, dynamic>>.from(
        json.decode(response.body) as List<Map>? ?? [],
      );
      final List<WooCartItem> cartItems = [];
      _printToLog('response gotten : $response');
      for (final p in jsonStr) {
        final prod = WooCartItem.fromJson(p);
        _printToLog('prod gotten here : ${prod.name}');
        cartItems.add(prod);
      }

      _printToLog('account user fetch : $jsonStr');

      return cartItems;
    } else {
      _printToLog(' error : ${response.body}');
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// This allows the client to remain in sync with the cart data without additional requests, should the cart change or become outdated.
  /// There are no parameters required for this endpoint.
  ///
  /// Returns the current user's [WooCart], information
  /// Related endpoint : wc/store/cart

  Future<WooCart> getMyCart() async {
    await getAuthTokenFromDb();
    // final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Basic $consumerKey:$consumerSecret';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      // if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };
    final response = await http.get(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart'),
      headers: urlHeader,
    );
    _printToLog('response gotten : $response');
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      return WooCart.fromJson(jsonStr);
    } else {
      _printToLog(' error : ${response.body}');
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Delete Single Cart Item
  /// Delete/remove an item from the cart.
  /// Attribute	Required [key] String
  /// Related endpoint :  wc/store/cart/items/[key]

  Future<String> deleteMyCartItem({required String key}) async {
    final Map<String, dynamic> data = {
      'key': key,
    };
    _printToLog('Deleting CartItem With Payload : $data');
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };

    final http.Response response = await http.delete(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/items/$key'),
      headers: urlHeader,
    );
    _printToLog('response of delete cart  : ${response.body}');

    if (response.statusCode >= 200 && response.statusCode < 300) {
      _printToLog(
        'response of delete cart oooo   : ${response.body}',
      );
      //final jsonStr = json.decode(response.body);

      //_printToLog('added to my cart : '+jsonStr.toString());
      //return WooCartItem.fromJson(jsonStr);
      return response.body;
    } else {
      Error.throwWithStackTrace(response.body, StackTrace.current);
    }
  }

  /// Delete All Cart Items
  /// Delete/remove all items from the cart.
  /// There are no parameters required for this endpoint.

  Future<String> deleteAllMyCartItems() async {
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };

    final http.Response response = await http.delete(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/items/'),
      headers: urlHeader,
    );
    _printToLog('response of delete cart  : ${response.body}');

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return response.body;
    } else {
      Error.throwWithStackTrace(response.body, StackTrace.current);
    }
  }

  /// Returns a [WooCartItem], with the specified [key].

  Future<WooCartItem> getMyCartItemByKey(String key) async {
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };
    final response = await http.get(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/items/$key'),
      headers: urlHeader,
    );
    _printToLog('response gotten : $response');
    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      return WooCartItem.fromJson(jsonStr);
    } else {
      _printToLog('error : ${response.body}');
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Edit Single Cart Item
  /// Edit an item in the cart.
  /// PUT /cart/items/:key
  /// Attributes	Required - the [key] of the cart item to edit. [quantity] of this item in the cart.
  /// Related endpoint :  wc/store/cart/items/[key]

  Future<WooCartItem> updateMyCartItemByKey({
    required String key,
    required int quantity,
    List<WooProductVariation>? variations,
  }) async {
    final Map<String, dynamic> data = {
      'key': key,
      'quantity': quantity.toString(),
    };
    if (variations != null) {
      data['variations'] = variations;
    }
    await getAuthTokenFromDb();
    final wcstoreapi = await fetchXWCStoreAPINonce();
    final authHeader = 'Bearer ${_authToken!}';
    final Map<String, String> urlHeader = {
      'Authorization': authHeader,
      if (wcstoreapi.isNotEmpty) 'X-WC-Store-API-Nonce': wcstoreapi,
    };
    final response = await http.put(
      Uri.parse('$baseUrl${URL_STORE_API_PATH}cart/items/$key'),
      headers: urlHeader,
      body: data,
    );

    if (response.statusCode >= 200 && response.statusCode < 300) {
      final jsonStr = Map<String, dynamic>.from(
        json.decode(response.body) as Map<String, dynamic>? ?? {},
      );

      _printToLog('added to my cart : $jsonStr');

      return WooCartItem.fromJson(jsonStr);
    } else {
      Error.throwWithStackTrace(
        response.body,
        StackTrace.current,
      );
    }
  }

  /// Creates an order and returns the [WooOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.
  Future<WooOrder> createOrder(WooOrderPayload orderPayload) async {
    _printToLog('Creating Order With Payload : $orderPayload');
    _setApiResourceUrl(
      path: 'orders',
    );
    final response = await post(queryUri.toString(), orderPayload.toJson());

    return WooOrder.fromJson(response);
  }

  /// Returns a list of all [Order], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders
  // ignore: long-parameter-list
  Future<List<WooOrder>> getOrders({
    int? page,
    int? perPage,
    String? search,
    String? after,
    String? before,
    List<int>? exclude,
    List<int>? include,
    int? offset,
    String? order,
    String? orderBy,
    List<int>? parent,
    List<int>? parentExclude,
    List<String>?
        status, // Options: any, pending, processing, on-hold, completed, cancelled, refunded, failed and trash. Default is any.
    int? customer,
    int? product,
    int? dp,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'search': search,
      'after': after,
      'before': before,
      'exclude': exclude,
      'include': include,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'parent': parent,
      'parent_exclude': parentExclude,
      'status': status,
      'customer': customer,
      'product': product,
      'dp': dp,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooOrder> orders = [];
    _printToLog('Getting Order With Payload : $payload');
    _setApiResourceUrl(path: 'orders', queryParameters: payload);
    final response = await getList(queryUri.toString());
    for (final o in response) {
      final order = WooOrder.fromJson(o);
      _printToLog('order gotten here : $order');
      orders.add(order);
    }

    return orders;
  }

  /// Returns a [WooOrder] object that matches the provided [id].

  Future<WooOrder> getOrderById(int id, {String? dp}) async {
    final Map<String, dynamic> payload = {};
    if (dp != null) {
      payload['dp'] = dp;
    }
    _setApiResourceUrl(
      path: 'orders/$id',
      queryParameters: payload,
    );
    final response = await get(queryUri.toString());

    return WooOrder.fromJson(response);
  }

  /// Updates an existing order and returns the [WooOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WooOrder> updateOrder({
    Map<String, dynamic>? orderMap,
    int? id,
  }) async {
    _printToLog('Updating Order With Payload : $orderMap');
    _setApiResourceUrl(
      path: 'orders/$id',
    );
    final response = await put(queryUri.toString(), orderMap);

    return WooOrder.fromJson(response);
  }

  /// Deletes an existing order and returns the [WooOrder] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WooOrder> deleteOrder({required int orderId}) async {
    final Map<String, dynamic> data = {
      'force': true,
    };
    _printToLog('Deleting Order With Id : $orderId');
    _setApiResourceUrl(
      path: 'orders/$orderId',
    );
    final response = await delete(queryUri.toString(), data);

    return WooOrder.fromJson(response);
  }

  /// Creates an coupon and returns the [WooCoupon] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#coupons.
  Future<WooCoupon> createCoupon({
    String? code,
    String? discountType,
    String? amount,
    bool? individualUse,
    bool? excludeSaleItems,
    String? minimumAmount,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'code': code,
      'discount_type': discountType,
      'amount': amount,
      'individual_use': individualUse,
      'exclude_sale_items': excludeSaleItems,
      'minimum_amount': minimumAmount,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    _setApiResourceUrl(
      path: 'coupons',
    );
    final response = await post(queryUri.toString(), payload);
    _printToLog('response gotten : $response');

    return WooCoupon.fromJson(response);
  }

  /// Returns a list of all [WooCoupon], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#coupons
  Future<List<WooCoupon>?> getCoupons({
    int? page,
    int? perPage,
    String? search,
    String? after,
    String? before,
    //List<int> exclude,
    //List<int> include,
    int? offset,
    String? order,
    String? orderBy,
    String? code,
  }) async {
    final Map<String, dynamic> payload = {};
    ({
      'page': page, 'per_page': perPage, 'search': search,
      'after': after, 'before': before,
      //'exclude': exclude, 'include': include,
      'offset': offset,
      'order': order, 'orderby': orderBy, 'code': code,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    List<WooCoupon>? coupons;
    _printToLog('Getting Coupons With Payload : $payload');
    _setApiResourceUrl(path: 'coupons', queryParameters: payload);
    final response = await getList(queryUri.toString());
    for (final c in response) {
      final coupon = WooCoupon.fromJson(c);
      _printToLog('prod gotten here : $order');
      coupons!.add(coupon);
    }

    return coupons;
  }

  /// Returns a [WooCoupon] object with the specified [id].
  Future<WooCoupon> getCouponById(int id) async {
    _setApiResourceUrl(path: 'coupons/$id');
    final response = await get(queryUri.toString());

    return WooCoupon.fromJson(response);
  }

  /// Returns a list of all [WooTaxRate], with filter options.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#tax-rates.
  Future<List<WooTaxRate>> getTaxRates({
    int? page,
    int? perPage,
    int? offset,
    String? order,
    String? orderBy,
    String? taxClass,
  }) async {
    final Map<String, dynamic> payload = {};

    ({
      'page': page,
      'per_page': perPage,
      'offset': offset,
      'order': order,
      'orderby': orderBy,
      'class': taxClass,
    }).forEach((k, v) {
      if (v != null) {
        payload[k] = v.toString();
      }
    });
    final List<WooTaxRate> taxRates = [];
    _printToLog('Getting Taxrates With Payload : $payload');
    _setApiResourceUrl(path: 'taxes', queryParameters: payload);
    final response = await getList(queryUri.toString());
    for (final t in response) {
      final tax = WooTaxRate.fromJson(t);
      _printToLog('prod gotten here : $order');
      taxRates.add(tax);
    }

    return taxRates;
  }

  /// Returns a [WooTaxRate] object matching the specified [id].

  Future<WooTaxRate> getTaxRateById(int id) async {
    _setApiResourceUrl(path: 'taxes/$id');
    final response = await get(queryUri.toString());

    return WooTaxRate.fromJson(response);
  }

  /// Returns a list of all [WooTaxClass].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#tax-classes.
  Future<List<WooTaxClass>> getTaxClasses() async {
    final List<WooTaxClass> taxClasses = [];
    _setApiResourceUrl(path: 'taxes/classes');
    final response = await getList(queryUri.toString());
    for (final t in response) {
      final tClass = WooTaxClass.fromJson(t);
      _printToLog('tax class gotten here : $tClass');
      taxClasses.add(tClass);
    }

    return taxClasses;
  }

  /// Returns a list of all [WooShippingZone].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zones.
  Future<List<WooShippingZone>> getShippingZones() async {
    final List<WooShippingZone> shippingZones = [];
    _setApiResourceUrl(path: 'shipping/zones');
    final response = await getList(queryUri.toString());
    for (final z in response) {
      final sZone = WooShippingZone.fromJson(z);
      _printToLog('shipping zones gotten here : $sZone');
      shippingZones.add(sZone);
    }

    return shippingZones;
  }

  /// Returns a [WooShippingZone] object with the specified [id].

  Future<WooShippingZone> getShippingZoneById(int id) async {
    _setApiResourceUrl(path: 'shipping/zones/$id');
    final response = await get(queryUri.toString());

    return WooShippingZone.fromJson(response);
  }

  /// Returns a list of all [WooShippingMethod].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-methods.
  Future<List<WooShippingMethod>> getShippingMethods() async {
    final List<WooShippingMethod> shippingMethods = [];
    _setApiResourceUrl(path: 'shipping_methods');
    final response = await getList(queryUri.toString());
    for (final z in response) {
      final sMethod = WooShippingMethod.fromJson(z);
      _printToLog('shipping methods gotten here : $sMethod');
      shippingMethods.add(sMethod);
    }

    return shippingMethods;
  }

  /// Returns a [WooShippingMethod] object with the specified [id].

  Future<WooShippingMethod> getShippingMethodById(int id) async {
    _setApiResourceUrl(path: 'shipping_methods/$id');
    final response = await get(queryUri.toString());

    return WooShippingMethod.fromJson(response);
  }

  /// Returns a list of all [WooShippingZoneMethod] associated with a shipping zone.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zone-locations.
  Future<List<WooShippingZoneMethod>> getAllShippingZoneMethods({
    required int shippingZoneId,
  }) async {
    final List<WooShippingZoneMethod> shippingZoneMethods = [];
    _setApiResourceUrl(
      path: 'shipping/zones/$shippingZoneId/methods',
    );
    final response = await getList(queryUri.toString());
    for (final l in response) {
      final sMethod = WooShippingZoneMethod.fromJson(l);
      _printToLog(
        'shipping zone locations gotten here : $sMethod',
      );
      shippingZoneMethods.add(sMethod);
    }

    return shippingZoneMethods;
  }

  /// Returns a [WooShippingZoneMethod] object from the specified [zoneId] and [methodId].

  Future<WooShippingZoneMethod> getAShippingMethodFromZone({
    required int zoneId,
    required int methodId,
  }) async {
    _setApiResourceUrl(
      path: 'shipping/zones/${zoneId}methods/$methodId',
    );
    final response = await get(queryUri.toString());

    return WooShippingZoneMethod.fromJson(response);
  }

  /// Deletes an existing shipping zone method and returns the [WooShippingZoneMethod] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WooShippingZoneMethod> deleteShippingZoneMethod({
    required int zoneId,
    required int methodId,
  }) async {
    final Map<String, dynamic> data = {
      'force': true,
    };
    _printToLog(
      'Deleting shipping zone method with zoneId : $zoneId',
    );
    _setApiResourceUrl(
      path: 'shipping/zones/${zoneId}methods/$methodId',
    );
    final response = await delete(queryUri.toString(), data);

    return WooShippingZoneMethod.fromJson(response);
  }

  /// Returns a list of all [WooShippingZoneLocation].
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#shipping-zone-locations.
  Future<List<WooShippingZoneLocation>> getShippingZoneLocations({
    required int shippingZoneId,
  }) async {
    final List<WooShippingZoneLocation> shippingZoneLocations = [];
    _setApiResourceUrl(
      path: 'shipping/zones/$shippingZoneId/locations',
    );
    final response = await getList(queryUri.toString());
    for (final l in response) {
      final sZoneLocation = WooShippingZoneLocation.fromJson(l);
      _printToLog(
        'shipping zone locations gotten here : $sZoneLocation',
      );
      shippingZoneLocations.add(sZoneLocation);
    }

    return shippingZoneLocations;
  }

  /// Returns a list of all [WooPaymentGateway] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#list-all-payment-gateways.
  Future<List<WooPaymentGateway>> getPaymentGateways() async {
    final List<WooPaymentGateway> gateways = [];
    _setApiResourceUrl(path: 'payment_gateways');
    final response = await getList(queryUri.toString());
    for (final g in response) {
      final sMethod = WooPaymentGateway.fromJson(g);
      _printToLog(
        'shipping zone locations gotten here : $sMethod',
      );
      gateways.add(sMethod);
    }

    return gateways;
  }

  /// Returns a [WooPaymentGateway] object from the specified [id].

  Future<WooPaymentGateway> getPaymentGatewayById(int id) async {
    _setApiResourceUrl(path: 'payment_gateways/$id');
    final response = await get(queryUri.toString());

    return WooPaymentGateway.fromJson(response);
  }

  /// Updates an existing order and returns the [WooPaymentGateway] object.
  ///
  /// Related endpoint: https://woocommerce.github.io/woocommerce-rest-api-docs/#orders.

  Future<WooPaymentGateway> updatePaymentGateway(
    WooPaymentGateway gateway,
  ) async {
    _printToLog(
      'Updating Payment Gateway With Payload : $gateway',
    );
    _setApiResourceUrl(
      path: 'payment_gateways/${gateway.id!}',
    );
    final response = await put(queryUri.toString(), gateway.toJson());

    return WooPaymentGateway.fromJson(response);
  }

  /// This Generates a valid OAuth 1.0 URL
  ///
  /// if [isHttps] is true we just return the URL with
  /// [consumerKey] and [consumerSecret] as query parameters
  String _getOAuthURL(String requestMethod, String endpoint) {
    final String? consumerKey = this.consumerKey;
    final String? consumerSecret = this.consumerSecret;

    const String token = '';
    _printToLog('oauth token = : $token');
    final String url = baseUrl + apiPath + endpoint;
    final bool containsQueryParams = url.contains('?');

    if (isHttps ?? false) {
      return url +
          (containsQueryParams
              ? '&consumer_key=${this.consumerKey!}&consumer_secret=${this.consumerSecret!}'
              : '?consumer_key=${this.consumerKey!}&consumer_secret=${this.consumerSecret!}');
    }

    final Random rand = Random();
    final List<int> codeUnits = List.generate(10, (index) {
      return rand.nextInt(26) + 97;
    });

    /// Random string uniquely generated to identify each signed request
    final String nonce = String.fromCharCodes(codeUnits);

    /// The timestamp allows the Service Provider to only keep nonce values for a limited time
    final int timestamp = DateTime.now().millisecondsSinceEpoch ~/ 1000;

    String parameters =
        'oauth_consumer_key=${consumerKey!}&oauth_nonce=$nonce&oauth_signature_method=HMAC-SHA1&oauth_timestamp=$timestamp&oauth_token=$token&oauth_version=1.0&';

    if (containsQueryParams) {
      parameters = parameters + url.split('?')[1];
    } else {
      parameters = parameters.substring(0, parameters.length - 1);
    }

    final Map<String, dynamic> params = QueryString.parse(parameters);
    final Map<String, dynamic> treeMap = SplayTreeMap<String, dynamic>();
    treeMap.addAll(params);

    final StringBuffer parameterBuffer = StringBuffer();

    for (final key in treeMap.keys) {
      parameterBuffer.write(
        '${Uri.encodeQueryComponent(key)}=${treeMap[key]}&',
      );
    }

    String parameterString = parameterBuffer.toString();
    parameterString = parameterString.substring(0, parameterString.length - 1);

    final String method = requestMethod;
    final String baseString =
        "$method&${Uri.encodeQueryComponent(containsQueryParams ? url.split("?").first : url)}&${Uri.encodeQueryComponent(parameterString)}";

    final String signingKey = '${consumerSecret!}&$token';
    final crypto.Hmac hmacSha1 =
        crypto.Hmac(crypto.sha1, utf8.encode(signingKey)); // HMAC-SHA1

    /// The Signature is used by the server to verify the
    /// authenticity of the request and prevent unauthorized access.
    /// Here we use HMAC-SHA1 method.
    final crypto.Digest signature = hmacSha1.convert(utf8.encode(baseString));

    final String finalSignature = base64Encode(signature.bytes);

    String requestUrl = '';

    if (containsQueryParams) {
      requestUrl =
          "${url.split("?").first}?$parameterString&oauth_signature=${Uri.encodeQueryComponent(finalSignature)}";
    } else {
      requestUrl =
          '$url?$parameterString&oauth_signature=${Uri.encodeQueryComponent(finalSignature)}';
    }

    return requestUrl;
  }

  dynamic _handleError(Map<String, dynamic> response) {
    if (response['message'] == null) {
      return response;
    } else {
      throw Exception(WooCommerceError.fromJson(response).toString());
    }
  }

  Exception _handleHttpError(http.Response response) {
    switch (response.statusCode) {
      case 400:
      case 401:
      case 404:
      case 500:
        Error.throwWithStackTrace(response.body, StackTrace.current);
      default:
        throw Exception(
          'An error occurred, status code: ${response.statusCode}',
        );
    }
  }

  // Get the auth token from db.

  Future<String?>? getAuthTokenFromDb() {
    return _localDbService.getSecurityToken();
  }

  // Sets the Uri for an endpoint.
  String _setApiResourceUrl({
    required String path,
    String? host,
    int? port,
    Map<String, dynamic>? queryParameters,
    bool isShop = false,
  }) {
    apiPath = DEFAULT_WC_API_PATH;
    if (isShop) {
      apiPath = URL_STORE_API_PATH;
    } else {
      apiPath = DEFAULT_WC_API_PATH;
    }
    //List<Map>param = [];
    // queryParameters.forEach((k, v) => param.add({k : v})); print(param.toString());
    getAuthTokenFromDb();
    queryUri = Uri(
      path: path,
      queryParameters: queryParameters,
      port: port,
      host: host,
    );

    _printToLog('Query : $queryUri');
    //queryUri = new Uri.http( path, param);

    return queryUri.toString();
  }

  String getQueryString(
    Map<String, dynamic> params, {
    String prefix = '&',
    bool inRecursion = false,
  }) {
    String query = '';

    params.forEach((key, value) {
      if (inRecursion) {
        key = '[$key]';
      }

      //if (value is String || value is int || value is double || value is bool) {
      query += '$prefix$key=$value';
      //} else if (value is List || value is Map) {
      // if (value is List) value = value.asMap();
      // value.forEach((k, v) {
      //  query += getQueryString({k: v}, prefix: '$prefix$key', inRecursion: true);
      //});
      // }
    });

    return query;
  }

  /// Make a custom get request to a Woocommerce endpoint, using WooCommerce SDK.

  Future<Map<String, dynamic>> get(String endPoint) async {
    final String url = _getOAuthURL('GET', endPoint);
    final String token = await _localDbService.getSecurityToken();
    final String bearerToken = 'Bearer $token';
    _printToLog('this is the bearer token : $bearerToken');
    final Map<String, String> headers = HashMap();
    headers.putIfAbsent('Accept', () => 'application/json charset=utf-8');
    // 'Authorization': _bearerToken,

    try {
      final http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return Map<String, dynamic>.from(
          json.decode(response.body) as Map<String, dynamic>? ?? {},
        );
      }
      _handleHttpError(response);
    } on SocketException {
      Error.throwWithStackTrace('No Internet connection.', StackTrace.current);
    }

    return {};
  }

  Future<List<Map<String, dynamic>>> getList(String endPoint) async {
    final String url = _getOAuthURL('GET', endPoint);
    final String token = await _localDbService.getSecurityToken();
    final String bearerToken = 'Bearer $token';
    _printToLog('this is the bearer token : $bearerToken');
    final Map<String, String> headers = HashMap();
    headers.putIfAbsent('Accept', () => 'application/json charset=utf-8');
    // 'Authorization': _bearerToken,

    try {
      final http.Response response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return List<Map<String, dynamic>>.from(
          json.decode(response.body) as List<Map>? ?? [],
        );
      }
      _handleHttpError(response);
    } on SocketException {
      Error.throwWithStackTrace('No Internet connection.', StackTrace.current);
    }

    return [];
  }

  /// Make a custom post request to Woocommerce, using WooCommerce SDK.

  Future<Map<String, dynamic>> post(
    String endPoint,
    Map<String, dynamic> data,
  ) async {
    final String url = _getOAuthURL('POST', endPoint);

    final http.Client client = http.Client();
    final http.Request request = http.Request('POST', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
        'application/json; charset=utf-8';
    //request.headers[HttpHeaders.authorizationHeader] = _bearerToken;
    request.headers[HttpHeaders.cacheControlHeader] = 'no-cache';
    request.body = json.encode(data);

    final res = await client.send(request);
    final String response = await res.stream.bytesToString();

    final dataResponse = Map<String, dynamic>.from(
      json.decode(response) as Map<String, dynamic>? ?? {},
    );

    _handleError(dataResponse);

    return dataResponse;
  }

  /// Make a custom put request to Woocommerce, using WooCommerce SDK.

  Future<Map<String, dynamic>> put(
    String endPoint,
    Map<String, dynamic>? data,
  ) async {
    final String url = _getOAuthURL('PUT', endPoint);

    final http.Client client = http.Client();
    final http.Request request = http.Request('PUT', Uri.parse(url));
    request.headers[HttpHeaders.contentTypeHeader] =
        'application/json; charset=utf-8';
    request.headers[HttpHeaders.cacheControlHeader] = 'no-cache';
    request.body = json.encode(data);

    final res = await client.send(request);
    final String response = await res.stream.bytesToString();

    final dataResponse = Map<String, dynamic>.from(
      json.decode(response) as Map<String, dynamic>? ?? {},
    );
    _handleError(dataResponse);

    return dataResponse;
  }

  Future<Map<String, dynamic>> delete(
    String endPoint,
    Map<String, dynamic> data, {
    String? aUrl,
  }) async {
    final realUrl = _getOAuthURL('DELETE', endPoint);

    // final url = Uri.parse(baseUrl + "notes/delete");
    final request = http.Request('DELETE', Uri.parse(realUrl));
    request.headers.addAll(<String, String>{
      'Accept': 'application/json',
    });
    request.body = jsonEncode(data);
    final response = await request.send();
    if (response.statusCode > 300) {
      return Future.error(
        'error: status code ${response.statusCode} ${response.reasonPhrase}',
      );
    }
    final deleteResponse = await response.stream.bytesToString();
    _printToLog('delete response : $deleteResponse');

    return Map<String, dynamic>.from(json.decode(deleteResponse) as Map? ?? {});
  }
}

class QueryString {
  /// Parses the given query string into a Map.
  static Map<String, dynamic> parse(String query) {
    final RegExp search = RegExp('([^&=]+)=?([^&]*)');
    final result = <String, dynamic>{};

    // Get rid off the beginning ? in query strings.
    String q = query;
    if (q.startsWith('?')) {
      q = q.substring(1);
    }

    // A custom decoder.
    String decode(String s) => Uri.decodeComponent(s.replaceAll('+', ' '));

    // Go through all the matches and build the result map.
    for (final Match match in search.allMatches(q)) {
      result[decode(match.group(1)!)] = decode(match.group(2)!);
    }

    return result;
  }
}
