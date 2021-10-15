import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter_shop/providers/product.dart';
import 'package:playground_flutter_shop/providers/products.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const routeName = 'product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)!.settings.arguments as String;

    final Product product = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);

    print(product.title);

    return Scaffold(
      appBar: AppBar(title: Text('title')),
    );
  }
}
