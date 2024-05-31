import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'order_manager.dart';
import 'order_item_card.dart';
import '../shared/app_drawer.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});
  static const routeName = '/OrdersScreen';

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final ordersManager = OrdersManager();
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<OrdersManager>(
        builder: (ctx, ordersManager, child) {
          return ListView.builder(
            itemCount: ordersManager.orderCount,
            itemBuilder: (ctx, i) => OrderItemCard(ordersManager.orders[i]),
          );
        },
      ),
    );
  }
}
