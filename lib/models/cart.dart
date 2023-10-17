import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
// list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Nike AF-1 basketball shoe sneaker",
      price: "\$120",
      description: 'The foward-thinking design of his latest signature shoe',
      imagePath: "/lib/images/Nike AF-1 basketball shoe sneaker.jpg",
    ),
    Shoe(
      name: "Air Jordan 1",
      price: '\$320',
      description: 'The foward-thinking design of his latest signature shoe',
      imagePath: "/lib/images/Nike Air Force 1.jpg",
    ),
    Shoe(
      name: "Air Jordan 1 WB",
      price: '\$220',
      description: 'The foward-thinking design of his latest signature shoe',
      imagePath: "/lib/images/Nike Air Force 1 07 WB light brown.jpg",
    ),
    Shoe(
      name: "Air Force 1 Shadow shoes",
      price: '\$420',
      description: 'The foward-thinking design of his latest signature shoe',
      imagePath: "/lib/images/NIKE Air Force 1 Shadow shoes.jpg",
    ),
  ];

// list of items in user cart
  List<Shoe> userCart = [];

// get list of shoe for sale
  List<Shoe> getShoeist() {
    return shoeShop;
  }

// get cart
  List<Shoe> getShoeList() {
    return userCart;
  }

// add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
