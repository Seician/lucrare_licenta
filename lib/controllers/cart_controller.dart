import 'package:flutter_complete_guide/data/repository/cart_repo.dart';
import 'package:flutter_complete_guide/models/products_model.dart';
import 'package:get/get.dart';

import '../models/cart_model.dart';

class CartController extends GetxController {
  final CartRepo cartRepo;

  CartController({required this.cartRepo});

  Map<int, CartModel> _items = {};

  Map<int, CartModel> get items => _items;

  void addItem(ProductModel product, int quantity) {
    if (_items.containsKey(product.id!)) {
      // daca deja exista in lista o sa fie actualizat
      _items.update(product.id!, (value) {
        return CartModel(
          id: value.id,
          name: value.name,
          price: value.price,
          img: value.img,
          quantity: value.quantity! + quantity,
          isExist: true,
          time: DateTime.now().toString(),
        );
      });
    } else {
      // daca nu este in lista va fi inclus
      _items.putIfAbsent(
          product.id!,
          () => CartModel(
                id: product.id,
                name: product.name,
                price: product.price,
                img: product.img,
                quantity: quantity,
                isExist: true,
                time: DateTime.now().toString(),
              ));
    }
  }
}
