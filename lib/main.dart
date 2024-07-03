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

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  final List<Widget> _screensList = [
    HomeScreen(),
    ProductScreen(),
    FavoriteScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Consumer<BottomNavModel>(
        builder: (context, bottomNavModel, child) {
          return _screensList[bottomNavModel.selectedPageNumber];
        },
      ),
      bottomNavigationBar: Consumer<BottomNavModel>(
        builder: (context, bottomNavModel, child) {
          return BottomNavigationBar(
            currentIndex: bottomNavModel.selectedPageNumber,
            type: BottomNavigationBarType.fixed,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'ホーム',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: '探す',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline),
                label: 'お気に入り',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'カート',
              ),
            ],
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.grey,
            unselectedLabelStyle: const TextStyle(color: Colors.black),
            selectedLabelStyle: const TextStyle(color: Colors.grey),
            onTap: (value) {
              bottomNavModel.updatedPageNumber(value);
            },
          );
        },
      ),
    );
  }
}

class BottomNavModel with ChangeNotifier {
  int _selectedPageNumber = 0;

  //getter
  int get selectedPageNumber => _selectedPageNumber;

  void updatedPageNumber(int index) {
    _selectedPageNumber = index;
    notifyListeners();
  }
}
