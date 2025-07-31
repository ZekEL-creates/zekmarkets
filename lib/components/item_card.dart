import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.image,
    required this.itemName,
    required this.edition,
    this.fontsize = 18,
    this.pricefontsize = 20,
    this.height = 80,
    this.width = 140,
    this.editionfontsize,
    this.radius,
    this.pricedistance = 17,
    required this.price,
  });
  final String image;
  final String itemName;
  final String edition;
  final double? fontsize;
  final double? pricefontsize;
  final double? height;
  final double? width;
  final double? editionfontsize;
  final double? radius;
  final double? pricedistance;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.05),
            offset: Offset(0, 1),
            blurRadius: 100,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius ?? 18),
              child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                height: height,
                width: width,
              ),
            ),
            SizedBox(height: 10),
            Text(
              itemName,
              style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5),
            Text(edition, style: TextStyle(fontSize: editionfontsize)),
            SizedBox(height: pricedistance),
            Text(
              'N$price',
              style: TextStyle(
                fontSize: pricefontsize,
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
