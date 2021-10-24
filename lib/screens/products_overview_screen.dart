import 'package:flutter/material.dart';

import 'package:playground_flutter_shop/widgets/products_grid.dart';

enum FilterOptions { Favorites, All }

class ProductOverviewScreen extends StatefulWidget {
  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  bool _showOnlyFavoritesData = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop App'),
        actions: [
          PopupMenuButton(
            icon: Icon(
              Icons.more_vert,
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                  child: Text('Only Favorites'),
                  value: FilterOptions.Favorites),
              PopupMenuItem(child: Text('Show all'), value: FilterOptions.All),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() => _showOnlyFavoritesData =
                  selectedValue == FilterOptions.Favorites ? true : false);
            },
          ),
        ],
      ),
      body: ProductsGrid(_showOnlyFavoritesData),
    );
  }
}
