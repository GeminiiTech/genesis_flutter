import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopitems = [
    //itemName || itemPrice || imagePath ||
    ["Hoodie", "20.00", "lib/images/hoodie.png"],
    ["Boxers", "34.80", "lib/images/hoodie.png"],
    ["Bag", "20.27", "lib/images/hoodie.png"],
    ["Iphone 14", "20.70", "lib/images/hoodie.png"],
    ["Laptop", "20.20", "lib/images/hoodie.png"],
    ["Television", "20.99", "lib/images/hoodie.png"],
  ];

  List _cartItems = [];

  final List _profileList = [
    //Title || Info

    ["Name", "Durosinmi-Etti Kehinde"],
    ["Phone", "08116354898"],
    ["Email", "kennyetti4@gmail.com"],
    ["Address", "154 Bamgbose Street"]
  ];

  get shopitems => _shopitems;

  get cartitems => _cartItems;

  get profilelist => _profileList;

  void addToCart(int index) {
    _cartItems.add(_shopitems[index]);
    notifyListeners();
  }

  void removeFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
