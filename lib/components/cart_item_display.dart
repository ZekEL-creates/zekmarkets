import 'package:flutter/material.dart';

class CartItemDisplay extends StatelessWidget {
  const CartItemDisplay({
    super.key,
    required this.image,
    required this.itemName,
    required this.itemEdition,
    required this.price,
    required this.height,
  });
  final String image;
  final String itemName;
  final String itemEdition;
  final int price;
  final double height;

  @override
  Widget build(BuildContext context) {
    int amount = 0;
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(image: AssetImage(image), height: height),
              SizedBox(width: 10),
              Column(
                children: [Text(itemName), Text(itemEdition), Text("$price")],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.delete, color: Colors.red),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed: () {}, child: Text('-')),
                  Text("$amount"),
                  TextButton(onPressed: () {}, child: Text('+')),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
