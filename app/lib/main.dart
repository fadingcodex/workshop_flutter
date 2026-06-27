import 'package:coffee_shop/pages/cart.dart';
import 'package:coffee_shop/pages/catalog.dart';
import 'package:coffee_shop/pages/profile.dart';
import 'package:coffee_shop/coffee_manager.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeShopApp());
}

/// Root widget of the CoffeeShop application.
///
/// Configures [MaterialApp] with the app theme and sets [HomePage] as the
/// initial route. A single shared [CoffeeManager] instance is stored here and
/// accessed by child widgets via `CoffeeShopApp.manager`.
class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  /// Shared state manager accessible from any widget in the tree.
  static final manager = CoffeeManager();

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(title: 'Coffee Shop'),
    );
  }
}

/// The main scaffold of the app, hosting the [BottomNavigationBar] and
/// switching between the three top-level pages.
class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  /// Title displayed in the [AppBar].
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// Index of the currently selected bottom-navigation tab.
  int index = 0;

  /// Returns the page widget that corresponds to the selected [index].
  ///
  /// - 0 → [CatalogPage]
  /// - 1 → [CartPage]
  /// - 2 → [ProfilePage]
  Widget navigateToPage() {
    switch (index) {
      case 1:
        return const CartPage();
      case 2:
        return const ProfilePage();

      default:
        return const CatalogPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Coffee Shop'),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: index,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Catalog'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list_alt_rounded), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_rounded), label: 'Profile'),
            ],
            onTap: (i) {
              setState(() {
                index = i;
              });
            }),
        body: navigateToPage());
  }
}
