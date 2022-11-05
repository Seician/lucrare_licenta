import 'dart:convert';
import 'dart:math';

import 'package:flutter_complete_guide/utils/app_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../models/cart_model.dart';

class CartRepo {
  final SharedPreferences sharedPreferences;

  CartRepo({required this.sharedPreferences});

  List<String> cart = [];

/*
    Add data to sharedPreferences list;
 */
  void addToCartList(List<CartModel> cartList) {
    cart = [];
    /*
    Convert objects to string because sharedPreference only accepts string
    */
    cartList.forEach((element) {
      return cart.add(jsonEncode(element));
    });
    // same as the line above but more fancy
    //cartList.forEach((element) => cart.add(jsonEncode(element)));

    sharedPreferences.setStringList(AppConstants.CART_LIST, cart);
    print(sharedPreferences.getStringList(AppConstants.CART_LIST));
  }

/*
    Retrieve data from sharedPreferences list;
 */
  List<CartModel> getCartList() {
    List<String> carts = [];

    if (sharedPreferences.containsKey(AppConstants.CART_LIST)) {
      carts = sharedPreferences.getStringList(AppConstants.CART_LIST)!;
      print("inside getCartList " + carts.toString());
    }
    List<CartModel> cartList = [];

    carts.forEach((element) {
      cartList.add(CartModel.fromJson(jsonDecode(element)));
    });
    return cartList;
  }
}
