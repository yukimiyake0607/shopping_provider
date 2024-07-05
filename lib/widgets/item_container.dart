import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/favorite_model.dart';
import '../screens/home_screen.dart';

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
