import 'package:flutter/material.dart';

class FavoriteModel extends ChangeNotifier {
  bool isFavorite = false;
  void getFavorite() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
