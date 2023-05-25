import 'dart:math';

class WooPriceFormatter {
  static String? displayPrice(int? price, int? decimalUnit) {
    if (price != null) {
      final minorUnit = decimalUnit ?? 0;
      final currencyMinor = pow(10, minorUnit);

      final totalPriceDouble = price / currencyMinor;

      return totalPriceDouble.toStringAsFixed(minorUnit);
    } else {
      return null;
    }
  }
}
