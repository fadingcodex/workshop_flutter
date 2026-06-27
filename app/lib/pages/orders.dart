import 'package:coffee_shop/models/order.dart';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Shows the full list of completed orders for the current session.
///
/// Receives the [orders] list from [ProfilePage] and renders each entry as a
/// coloured card showing the number of products, total cost, and the formatted
/// date/time of the purchase.
class OrdersPage extends StatelessWidget {
  /// The list of orders to display.
  final List<Order> orders;

  /// Formatter used to display [Order.orderedAt] as `dd-MM-yyyy (HH:mm)`.
  final DateFormat formatter = DateFormat('dd-MM-yyyy (HH:mm)');

  OrdersPage({super.key, required this.orders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('All your orders'),
        ),
        body: Center(
            child: ListView.builder(
                itemCount: orders.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10)),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          '${orders[index].products} products for ${orders[index].total} 💶 \nOrdered at ${formatter.format(orders[index].orderedAt)}',
                          style: const TextStyle(color: Colors.black)),
                    ),
                  );
                })));
  }
}
