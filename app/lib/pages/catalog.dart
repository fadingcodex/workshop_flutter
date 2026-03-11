import 'package:coffee_shop/main.dart';
import 'package:coffee_shop/models/product.dart';

import 'package:flutter/material.dart';

/// Displays the list of available coffee products and allows the user to add
/// items to the cart by tapping them.
class CatalogPage extends StatefulWidget {
  const CatalogPage({super.key});

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
  String username = CoffeeShopApp.manager.user.name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Hello there, $username!',
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const Text(
          'Choose your coffee(s):',
          style: TextStyle(fontSize: 15),
        ),
        Expanded(
            child: Column(
          children: [
            buildCatalogItem(Product(name: 'Espresso', pic: '', price: 1)),
            buildCatalogItem(Product(name: 'Mocha', pic: '', price: 2)),
            buildCatalogItem(Product(name: 'Frappe', pic: '', price: 3)),
          ],
        ))
      ],
    );
  }

  /// Builds a single [ListTile] for [p].
  ///
  /// Tapping the tile calls [CoffeeManager.addToCart] and triggers a
  /// `setState` so that any UI depending on the cart is rebuilt.
  ListTile buildCatalogItem(Product p) {
    String price = p.price.toString();

    return ListTile(
      leading: const Icon(Icons.coffee),
      title: Text(p.name),
      subtitle: Text('Price: $price 💶'),
      onTap: () => setState(() {
        CoffeeShopApp.manager.addToCart(p);
      }),
    );
  }

  /// Shows a [SnackBar] confirming that a product was added to the cart.
  void showToast(BuildContext context) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: const Text('Product added'),
        action: SnackBarAction(
            label: 'HIDE', onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
  }
}
