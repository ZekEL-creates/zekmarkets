import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/item_card.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/pages/product_details.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({
    super.key,
    required this.controller,
    required this.itemCount,
    required this.images,
    required this.itemName,
    required this.itemEdition,
  });
  final TabController controller;
  final int itemCount;
  final List<String> images;
  final List<String> itemName;
  final List<String> itemEdition;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      padding: EdgeInsets.all(2),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        childAspectRatio: 0.7,
      ),
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return ProductDetails(index: index, rating: 4);
                },
              ),
            );
          },
          child: ItemCard(
            image: images[index],
            itemName: itemName[index],
            edition: itemEdition[index],
            price: prices[index],
          ),
        );
      }),
    );
  }
}
