import 'package:test/test.dart';
import 'package:woocommerce/models/cart.dart';

void main() {
  test('WooCartTotals.totalDisplayPrice 1', () {
    final wooCartTotals = WooCartTotals(
      totalItems: 999,
      totalPrice: 9900,
      currencyCode: 'USD',
      currencyMinorUnit: 2,
    );

    expect(wooCartTotals.displayTotalPrice, '99.00');
  });

  test('WooCartTotals.totalDisplayPrice 2', () {
    final wooCartTotals = WooCartTotals(
      totalItems: 999,
      totalPrice: 56,
      currencyCode: 'USD',
      currencyMinorUnit: 2,
    );

    expect(wooCartTotals.displayTotalPrice, '0.56');
  });

  test('WooCartTotals.totalDisplayPrice 3', () {
    final wooCartTotals = WooCartTotals(
      totalItems: 999,
      totalPrice: 123456,
      currencyCode: 'USD',
      currencyMinorUnit: 4,
    );

    expect(wooCartTotals.displayTotalPrice, '12.3456');
  });
}
