import 'package:flutter/material.dart';

import 'package:playground_flutter_shop/screens/products_overview_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shop App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: ColorScheme(
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
    );
  }
}
