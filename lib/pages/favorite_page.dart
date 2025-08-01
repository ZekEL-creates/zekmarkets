import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/functionalities/add_to_cart.dart';
import 'package:marketstreetapp/components/item_display.dart';
import 'package:marketstreetapp/items/lists.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Favorites', style: TextStyle(fontWeight: FontWeight.w800)),
        centerTitle: true,
      ),

      body: favorites.isNotEmpty
          ? ListView.builder(
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                var item = favorites[index];
                return ItemDisplay(
                  image: item.itemImage,
                  height: 70,
                  itemName: item.itemName,
                  edition: item.itemEdition,
                  price: item.price,
                  children: [
                    TextButton(
                      onPressed: () {
                        addToCart(item.itemName);
                      },
                      child: Text(
                        'add to cart',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          removeFromFavorites(item.itemName);
                        });
                      },
                      icon: Icon(Icons.favorite),
                    ),
                  ],
                );
              },
            )
          : Center(child: Text('No favorites')),
    );
  }
}
