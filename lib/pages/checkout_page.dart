import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/widgets/app_container.dart';
import 'package:marketstreetapp/widgets/button.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

enum Address { homeAddress, anotherAddress }

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Checkout', style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AppContainer(
              child: RadioMenuButton(
                value: Address.homeAddress,
                groupValue: Address.anotherAddress,
                onChanged: (val) {
                  setState(() {
                    val = Address.homeAddress;
                  });
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.account_balance_sharp,
                      size: 30,
                      color: Appcolors.bluegradientLight,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "8, Aje Road Sabo Yaba",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text("Lagos, Nigeria"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Use another address',
                style: TextStyle(color: Appcolors.bluegradientLight),
              ),
            ),

            AppContainer(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text(
                    "N${getTotalPriceOfItemsInCart()}",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35),
            AppContainer(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(color: Appcolors.text2),
                      ),
                      Text(
                        "N${getTotalPriceOfItemsInCart()}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Delivery',
                        style: TextStyle(color: Appcolors.text2),
                      ),
                      Text(
                        "N${getTotalPriceOfItemsInCart()}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Service Charge',
                        style: TextStyle(color: Appcolors.text2),
                      ),
                      Text(
                        "N${getTotalPriceOfItemsInCart()}",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 40),
            AppContainer(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Please, note that you are paying through the company,",
                    style: TextStyle(color: Appcolors.text2),
                  ),
                  Text(
                    "and we will not release funds to the seller until your",
                    style: TextStyle(color: Appcolors.text2),
                  ),
                  Text(
                    "confirmation and receival of the goods in promised",
                    style: TextStyle(color: Appcolors.text2),
                  ),
                  Text("conditions.", style: TextStyle(color: Appcolors.text2)),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Button(
          onPressed: () {},
          identifier: 'Pay',
          width: double.infinity,
        ),
      ),
    );
  }
}

int getTotalPriceOfItemsInCart() {
  int total = 0;
  for (var item in cart) {
    total += item.price;
  }
  return total;
}
