import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

class ItemContainer extends StatelessWidget {
  String itemImageUrl;
  String itemName;
  String itemPrice;

  ItemContainer(
      {required this.itemImageUrl,
      required this.itemName,
      required this.itemPrice});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {},
            child: Image.network(
              itemImageUrl,
            ),
          ),
          Text(itemName),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('￥$itemPrice')),
              Consumer<FavoriteModel>(
                builder: (context, favoriteModel, child) {
                  return GestureDetector(
                    onTap: () {
                      favoriteModel.getFavorite();
                    },
                    child: favoriteModel.isFavorite
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_outline),
                  );
                },
              ),
            ],
          ),
        ],
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
