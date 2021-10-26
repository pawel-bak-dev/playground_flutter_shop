import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter_shop/widgets/app_drawer.dart';
import 'package:playground_flutter_shop/providers/orders.dart' show Orders;
import 'package:playground_flutter_shop/widgets/order_item.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  static const routeName = '/orders';

  @override
  Widget build(BuildContext context) {
    final orderData = Provider.of<Orders>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Orders'),
      ),
      drawer: const AppDrawer(),
      body: ListView.builder(
        itemCount: orderData.orders.length,
        itemBuilder: (ctx, index) => OrderItem(
          orderData.orders[index],
        ),
      ),
    );
  }
}
