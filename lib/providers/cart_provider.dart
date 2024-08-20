import 'package:flutter/material.dart';
import '../utils/products.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  double get totalValue => _cartProducts.fold(0, (sum, item) => sum + (item.productPrice * item.quantity));

  void addToCart(Product product) {
    Product.addToCart(product, _cartProducts);
    notifyListeners();
  }

  void clearCart() {
    _cartProducts.clear();
    notifyListeners();
  }
}