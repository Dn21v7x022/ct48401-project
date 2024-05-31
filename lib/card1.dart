// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/ui/cart/cart_manager.dart';
import 'ui/cart/cart_screen.dart';
import 'ui/products/product_overview_screen.dart';
import 'theme.dart';
import 'ui/products/top_right_badge.dart';
import 'ui/shared/app_drawer.dart';

class Card1 extends StatelessWidget {
  static const routeName = '/product-detail';
  const Card1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ProductsOverviewScreen()),
      drawer: AppDrawer(),
    );
  }

  Widget buildShoppingCartIcon() {
    return Consumer<CartManager>(
      builder: (ctx, cartManager, child) {
        return TopRightBadge(
          data: cartManager.productCount,
          child: IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () {
              Navigator.of(ctx).pushNamed(CartScreen.routeName);
            },
          ),
        );
      },
    );
  }
}
