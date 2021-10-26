import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

import 'package:playground_flutter_shop/providers/orders.dart'
    as order_provider;

class OrderItem extends StatefulWidget {
  final order_provider.OrderItem order;

  const OrderItem(this.order, {Key? key}) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  var _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: Column(
        children: [
          ListTile(
            title: Text('\$${widget.order.amount}'),
            subtitle: Text(
              DateFormat('dd/MM/yyyy').format(widget.order.dateTime),
            ),
            trailing: IconButton(
              icon: Icon(_expanded ? Icons.expand_less : Icons.expand_more),
              onPressed: () => setState(() => _expanded = !_expanded),
            ),
          ),
          if (_expanded)
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 5,
              ),
              height: min(
                widget.order.products.length * 20.0 + 20,
                100,
              ),
              child: ListView(
                children: widget.order.products.map(
                  (product) {
                    return Row(
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$${product.quantity} \$${product.price}',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    );
                  },
                ).toList(),
              ),
            ),
        ],
      ),
    );
  }
}
