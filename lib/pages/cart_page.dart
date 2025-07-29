import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/cart_item_display.dart';
import 'package:marketstreetapp/items/lists.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Text("Cart", style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
        actions: [],
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: ((context, index) {
          return CartItemDisplay(
            image: cart[index].itemImage,
            itemName: cart[index].itemName,
            itemEdition: cart[index].itemEdition,
            price: 5000,
            height: 100,
          );
        }),
      ),
    );
  }
}
