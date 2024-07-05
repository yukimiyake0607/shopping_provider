import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/favorite_model.dart';

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
      margin: EdgeInsets.only(right: 16),
      width: 150,
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: GestureDetector(
              onTap: () {},
              child: Image.network(
                itemImageUrl,
                fit: BoxFit.cover,
              ),
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
