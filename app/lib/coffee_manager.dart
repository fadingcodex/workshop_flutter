import 'package:coffee_shop/models/order.dart';
import 'package:coffee_shop/models/product.dart';
import 'package:coffee_shop/models/user.dart';

/// Lightweight in-memory state container for the CoffeeShop app.
///
/// [CoffeeManager] holds all mutable application data – the current user,
/// the shopping cart, and the order history – and exposes simple methods to
/// manipulate that data.  A single instance is created in [CoffeeShopApp] and
/// shared across all pages through the static [CoffeeShopApp.manager] accessor.
///
/// > **Note:** This class does **not** use any state management library and
/// > does **not** persist data between app restarts. It is intentionally simple
/// > for workshop / learning purposes.
class CoffeeManager {
  /// The currently logged-in user. Pre-populated with placeholder data.
  final User user =
      User(name: 'Awesome', mail: 'you@awesome.com', phone: '666-666-66');

  /// Products that have been added to the cart but not yet paid for.
  final List<Product> productsInCart = [];

  /// Completed orders placed during the current session.
  final List<Order> orders = [];

  /// Running total of all items currently in [productsInCart], in whole
  /// currency units. Updated automatically whenever the cart changes.
  int total = 0;

  /// Adds [product] to the cart and recalculates [total].
  void addToCart(Product product) {
    productsInCart.add(product);
    _calculateTotal();
  }

  /// Recalculates [total] by summing the prices of all items in [productsInCart].
  /// Resets [total] to 0 when the cart is empty.
  void _calculateTotal() {
    if (productsInCart.isNotEmpty) {
      var prices = productsInCart.map((e) => e.price).toList();
      total = prices.reduce((value, element) => value + element);
    } else {
      total = 0;
    }
  }

  /// Converts the current cart into a new [Order], appends it to [orders],
  /// and clears the cart. Does nothing if the cart is empty.
  void makeOrder() {
    if (productsInCart.isNotEmpty) {
      int howManyProducts = productsInCart.length;

      var newOrder = Order(
          products: howManyProducts, total: total, orderedAt: DateTime.now());
      orders.add(newOrder);

      clearCart();
    }
  }

  /// Removes all products from the cart and resets [total] to 0.
  void clearCart() {
    productsInCart.clear();
    _calculateTotal();
  }
}
