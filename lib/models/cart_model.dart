import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    //itemName || itemPrice || imagePath ||
    ["Hoodie", "20.0", "lib/images/hoodie.png"],
    ["Boxers", "34.0", "lib/images/hoodie.png"],
    ["Bag", "20.0", "lib/images/hoodie.png"],
    ["Iphone 14", "20.70", "lib/images/hoodie.png"],
    ["Laptop", "20.0", "lib/images/hoodie.png"],
    ["Television", "20.99", "lib/images/hoodie.png"],
  ];

  List _cartItems = [];

  get shopitems => _shopitems;

  get cartitems => _cartItems;

  void addToCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
