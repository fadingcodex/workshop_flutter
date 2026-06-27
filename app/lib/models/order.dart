/// Represents a completed purchase order.
class Order {
  /// Creates an [Order] with the number of [products] purchased,
  /// the [total] price paid, and the [orderedAt] timestamp.
  Order({required this.products, required this.total, required this.orderedAt});

  /// Number of products included in this order.
  final int products;

  /// Total cost of the order in whole currency units.
  final int total;

  /// Date and time at which the order was placed.
  final DateTime orderedAt;
}
