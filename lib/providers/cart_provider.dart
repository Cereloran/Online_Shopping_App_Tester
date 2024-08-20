import 'package:flutter/material.dart';
import '../utils/products.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  void addToCart(Product product) {
    _cartProducts.add(product);
    notifyListeners();
  }

  void clearCart() {
    _cartProducts.clear();
    notifyListeners();
  }

  double get totalValue {
    return _cartProducts.fold(0, (sum, item) => sum + item.productPrice);
  }
}