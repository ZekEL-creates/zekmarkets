import 'package:flutter/material.dart';
import 'package:marketstreetapp/items/lists.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [Image(image: AssetImage(cart[index].itemImage))],
          );
        }),
      ),
    );
  }
}
