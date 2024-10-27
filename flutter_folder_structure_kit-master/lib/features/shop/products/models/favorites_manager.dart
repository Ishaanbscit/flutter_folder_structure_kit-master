// favorites_manager.dart

import 'package:flutter/material.dart';
import 'package:t_store/features/shop/products/models/book.dart';

class FavoritesManager with ChangeNotifier {
  final List<Book> _favoriteItems = [];

  List<Book> get favoriteItems => _favoriteItems;

  void addToFavorites(Book book) {
    _favoriteItems.add(book);
    notifyListeners();
  }

  void removeFromFavorites(Book book) {
    _favoriteItems.remove(book);
    notifyListeners();
  }

  bool isFavorite(Book book) {
    return _favoriteItems.contains(book);
  }
}
