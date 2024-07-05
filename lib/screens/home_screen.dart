import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/item_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Clothing Store'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('この夏おすすめの注目アイテム'),
            Row(
              children: [
                ItemContainer(
                    itemImageUrl:
                        'https://image.salesnauts.com/acrmtsm/img/NcSjyHjc4ERt.jpg?width=768',
                    itemName: 'プリントTシャツ',
                    itemPrice: '14,300')
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FavoriteModel extends ChangeNotifier {
  bool isFavorite = false;
  void getFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
