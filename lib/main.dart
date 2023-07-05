import 'package:flutter/material.dart';
import 'package:flutter_application_1/detail.dart';

import 'Screens/HomePage.dart';
import 'Screens/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const Home_Page(),
        'cart': (context) =>  Cart(),
        'detail': (context) =>  Detail(),
      },
    );
  }
}
