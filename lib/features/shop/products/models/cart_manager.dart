// cart_manager.dart

import 'package:flutter/material.dart';
import 'package:t_store/features/shop/products/models/book.dart';

class CartManager with ChangeNotifier {
  final List<Book> _cartItems = [];

  List<Book> get cartItems => _cartItems;

  void addToCart(Book book) {
    _cartItems.add(book);
    notifyListeners();
  }

  void removeFromCart(Book book) {
    _cartItems.remove(book);
    notifyListeners();
  }

  bool isInCart(Book book) {
    return _cartItems.contains(book);
  }
}
