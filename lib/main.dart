import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:playground_flutter_shop/screens/products_overview_screen.dart';
import 'package:playground_flutter_shop/screens/product_details_screen.dart';
import 'package:playground_flutter_shop/screens/cart_screen.dart';
import 'package:playground_flutter_shop/screens/orders_screen.dart';
import 'package:playground_flutter_shop/providers/products.dart';
import 'package:playground_flutter_shop/providers/cart.dart';
import 'package:playground_flutter_shop/providers/orders.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Cart(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Orders(),
        ),
      ],
      child: MaterialApp(
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          colorScheme: const ColorScheme(
            primary: Colors.purple,
            primaryVariant: Colors.purpleAccent,
            secondary: Colors.deepOrange,
            secondaryVariant: Colors.deepOrangeAccent,
            surface: Colors.white,
            background: Colors.white,
            error: Colors.red,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.black,
            onBackground: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
          fontFamily: 'Lato',
        ),
        home: ProductOverviewScreen(),
        routes: {
          ProductDetailsScreen.routeName: (ctx) => ProductDetailsScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
        },
      ),
    );
  }
}
