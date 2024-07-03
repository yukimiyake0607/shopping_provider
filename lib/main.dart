import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider/screens/cart_screen.dart';
import 'package:shopping_provider/screens/favorite_screen.dart';
import 'package:shopping_provider/screens/home_screen.dart';
import 'package:shopping_provider/screens/product_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => BottomNavModel(),
      child: MaterialApp(
        home: BottomNavigationScreen(),
      ),
    );
  }
}
