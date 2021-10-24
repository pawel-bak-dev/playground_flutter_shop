import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter_shop/widgets/product_item.dart';
import 'package:playground_flutter_shop/providers/products.dart';

class ProductsGrid extends StatelessWidget {
  final bool showOnlyFavoritesData;

  ProductsGrid(this.showOnlyFavoritesData);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = showOnlyFavoritesData
        ? productsData.favoritesItems
        : productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: products.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: products[index],
        child: ProductItem(),
      ),
    );
  }
}
