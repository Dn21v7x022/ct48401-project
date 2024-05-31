// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'ui/products/product_detail_screen.dart';
import 'ui/products/products_manager.dart';
import 'ui/products/product_overview_screen.dart';
import 'ui/products/user_products_screen.dart';
import 'ui/cart/cart_screen.dart';
import 'ui/orders/orders_screen.dart';
import 'ui/screens.dart';

import 'theme.dart';
import 'author_card.dart';
import 'ui/shared/app_drawer.dart';

class Card4 extends StatelessWidget {
  const Card4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QUẢN LÝ ĐƠN HÀNG'),
      ),
      drawer: const AppDrawer(),
      body: const SafeArea(child: OrdersScreen()),
    );
  }
}
