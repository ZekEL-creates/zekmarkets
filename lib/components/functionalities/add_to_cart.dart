import 'package:marketstreetapp/items/item.dart';
import 'package:marketstreetapp/items/lists.dart';

void addToCart(itemname) {
  Item cartItem;
  for (var item in items) {
    if (item.itemName == itemname) {
      cartItem = item;
      if (!cart.contains(cartItem)) {
        cart.add(item);
      }
    }
  }
}

void removeFromCart(itemname) {
  Item cartItem;
  for (var item in items) {
    if (item.itemName == itemname) {
      cartItem = item;
      if (cart.contains(cartItem)) {
        cart.remove(cartItem);
      }
    }
  }
}
