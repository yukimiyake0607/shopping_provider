import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_provider/style.dart';

import '../widgets/item_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BoutiqueMe', style: kAppTitle),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'この夏おすすめの注目アイテム',
                style: kArticleTitle,
              ),
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
      ),
    );
  }
}
