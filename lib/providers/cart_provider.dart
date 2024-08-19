import 'package:flutter/material.dart';
import '../utils/products.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartProducts = [];

  List<Product> get cartProducts => _cartProducts;

  void addToCart(Product product) {
    var existingProduct = _cartProducts.firstWhere(
          (item) => item.productName == product.productName,
      orElse: () {
        _cartProducts.add(product);
        return product;
      },
    );
    existingProduct.quantity++;
    notifyListeners();
  }

  void clearCart() {
    _cartProducts.clear();
    notifyListeners();
  }
}