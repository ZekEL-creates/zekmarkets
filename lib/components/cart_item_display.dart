import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(bottom: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.08),
              blurRadius: 15,
              spreadRadius: 0.5,
              offset: Offset(0, 1),
            ),
          ],
        ),
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image(
                    image: AssetImage(widget.image),
                    height: widget.height,
                  ),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.itemName,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(widget.itemEdition),
                    SizedBox(height: 10),
                    Text(
                      "N${widget.price}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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
            ),
          ],
        ),
      ),
    );
  }
}
