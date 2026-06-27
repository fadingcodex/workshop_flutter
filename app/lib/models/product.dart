/// Represents a coffee product available in the catalog.
class Product {
  /// Creates a [Product] with a [name], [price] in whole currency units,
  /// and a [pic] URL (may be empty in the workshop starter).
  Product({required this.name, required this.price, required this.pic});

  /// Display name of the product (e.g. "Espresso").
  final String name;

  /// Price of the product in whole currency units (e.g. 2 for €2).
  final int price;

  /// URL or asset path for the product image. May be an empty string.
  final String pic;
}
