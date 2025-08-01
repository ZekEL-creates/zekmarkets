import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/components/item_display.dart';

class CartItemDisplay extends StatefulWidget {
  const CartItemDisplay({
    super.key,
    required this.image,
    required this.itemName,
    required this.itemEdition,
    required this.price,
    required this.height,
    required this.onDelete,
  });
  final String image;
  final String itemName;
  final String itemEdition;
  final int price;
  final double height;
  final VoidCallback onDelete;

  @override
  State<CartItemDisplay> createState() => _CartItemDisplayState();
}

class _CartItemDisplayState extends State<CartItemDisplay> {
  int amount = 1;
  @override
  Widget build(BuildContext context) {
    return ItemDisplay(
      image: widget.image,
      height: widget.height,
      itemName: widget.itemName,
      edition: widget.itemEdition,
      price: widget.price,
      children: [
        IconButton(
          onPressed: widget.onDelete,
          icon: Icon(Icons.delete, color: Colors.red),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (amount != 0) {
                    amount--;
                  }
                });
              },
              icon: Icon(Icons.remove),
              padding: EdgeInsets.zero,
            ),
            Container(
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                color: Appcolors.bluegradientLight,
                shape: BoxShape.circle,
              ),
              child: Text(
                "$amount",
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  amount++;
                });
              },
              icon: Icon(Icons.add),
              padding: EdgeInsets.zero,
            ),
          ],
        ),
      ],
    );
  }
}
