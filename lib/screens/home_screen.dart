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
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        ItemContainer(
                          itemImageUrl:
                              'https://image.salesnauts.com/acrmtsm/img/NcSjyHjc4ERt.jpg?width=768',
                          itemName: 'プリントTシャツ white',
                          itemPrice: '14,300',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://image.salesnauts.com/acrmtsm/img/7PJLjAFhE8jv.jpg?width=768',
                          itemName: 'プリントTシャツ black',
                          itemPrice: '14,300',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://image.salesnauts.com/acrmtsm/img/eD9Z5TWpSnQX.jpg?width=768',
                          itemName: 'Belted Wide Shorts',
                          itemPrice: '29,700',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://image.salesnauts.com/acrmtsm/img/z9FCaztLTEsA.jpg?width=768',
                          itemName: 'Nylon Short',
                          itemPrice: '9,900',
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ItemContainer(
                          itemImageUrl:
                              'https://tshop.r10s.jp/stylife/cabinet/item/424/mf1424-02_1.jpg?fitin=1500:1800&composite-to=center,center|1500:1800',
                          itemName: 'Cotton Twill BB Cap',
                          itemPrice: '5,500',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://store.50910.jp/upload/save_image/03201925_6418348e461ae.jpg',
                          itemName: 'Spin Cotton Chino Cap',
                          itemPrice: '9,900',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://tshop.r10s.jp/stylife/cabinet/item/424/mf1424-02_1.jpg?fitin=1500:1800&composite-to=center,center|1500:1800',
                          itemName: 'Cotton Twill BB Cap',
                          itemPrice: '5,500',
                        ),
                        ItemContainer(
                          itemImageUrl:
                              'https://tshop.r10s.jp/stylife/cabinet/item/424/mf1424-02_1.jpg?fitin=1500:1800&composite-to=center,center|1500:1800',
                          itemName: 'Cotton Twill BB Cap',
                          itemPrice: '5,500',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
