import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/cart_item_display.dart';
import 'package:marketstreetapp/components/functionalities/add_to_cart.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/pages/checkout_page.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
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
      body: cart.isNotEmpty
          ? SingleChildScrollView(
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 100,
                child: Column(
                  children: [
                    ConstrainedBox(
                      constraints: BoxConstraints(maxHeight: 800),
                      child: Flexible(
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: cart.length,
                          itemBuilder: ((context, index) {
                            var item = cart[index];
                            return CartItemDisplay(
                              image: item.itemImage,
                              itemName: item.itemName,
                              itemEdition: item.itemEdition,
                              price: item.price,
                              height: 70,
                              onDelete: () {
                                setState(() {
                                  removeFromCart(item.itemName);
                                });
                              },
                            );
                          }),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Textfield(hint: 'Coupon code', width: 150),
                          Button(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return CheckoutPage();
                                  },
                                ),
                              );
                            },
                            identifier: 'Checkout',
                            width: 150,
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          : Center(child: Text("Nothing is in cart!")),
    );
  }
}
