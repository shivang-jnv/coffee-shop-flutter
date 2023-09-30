import 'package:coffee_shop/models/coffee.dart';
import 'package:flutter/material.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'lib/images/black.png',
    ),
    Coffee(
      name: 'Latte',
      price: '4.20',
      imagePath: 'lib/images/latte.png',
    ),
    Coffee(
      name: 'Espresso',
      price: '3.50',
      imagePath: 'lib/images/espresso.png',
    ),
    Coffee(
      name: 'Iced Coffee',
      price: '4.40',
      imagePath: 'lib/images/iced-coffee.png',
    ),
  ];

  //user cart
  List<Coffee> _userCart = [];

  // get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to the cart
  void addItemsToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
