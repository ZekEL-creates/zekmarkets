import 'package:flutter/material.dart';
import 'package:marketstreetapp/components/item_card.dart';
import 'package:marketstreetapp/components/tab_bar_builder.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/widgets/button.dart';

class ProductDetails extends StatefulWidget {
  final int index;
  final int rating;
  const ProductDetails({super.key, required this.index, required this.rating});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails>
    with SingleTickerProviderStateMixin {
  late int index;
  late int rating;
  late String image;
  late String itemName;
  late String edition;
  late TabController _tabController;
  @override
  void initState() {
    index = widget.index;
    rating = widget.rating;
    itemName = names[index];
    image = itemImage[index];
    edition = editions[index];
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  List<Widget> tab = [Tab(child: Text('Details')), Tab(child: Text('Reviews'))];
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
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Product Details',
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(right: 25, left: 25),
            child: Column(
              children: [
                SizedBox(
                  height: 260,
                  width: double.infinity,
                  child: Image(image: AssetImage(image), fit: BoxFit.cover),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          itemName,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        Text(
                          "(With solo loop)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              "N7000",
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "N5000",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 7,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "Versace",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: TabBarBuilder(
                        tab: tab,
                        controller: _tabController,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [Icon(Icons.favorite, color: Colors.grey)],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Expanded(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      Text(
                        "Call it a treasure chest or a mini portable \nworld. Handbags are indispensable in \ndaily life.",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                      Text(
                        "Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatum nobis dolorem",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  flex: 0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Seller",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image(
                                  image: AssetImage(itemImage[3]),
                                  height: 50,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text("Sarah Patricia Evans"),
                            ],
                          ),

                          Row(
                            children: List.generate(5, (rating) {
                              return Icon(
                                rating < 4 ? Icons.star : Icons.star_outline,
                                size: 15,
                              );
                            }),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Similar products",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: List.generate(4, (index) {
                          return ItemCard(
                            image: image,
                            itemName: itemName,
                            edition: edition,
                            height: 50,
                            width: 60,
                            fontsize: 9,
                            pricefontsize: 10,
                            editionfontsize: 8,
                            radius: 10,
                            pricedistance: 10,
                          );
                        }),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 46,
                            width: 150,
                            decoration: BoxDecoration(
                              border: BoxBorder.fromBorderSide(
                                BorderSide(color: Colors.grey),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                          Button(
                            onPressed: () {
                              for (var item in items) {
                                if (item.itemName == itemName) {
                                  cart.add(item);
                                  print(item.itemName);
                                }
                              }
                            },
                            identifier: "Buy",
                            width: 150,
                            fontSize: 20,
                            height: 48,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Center(
                        child: Text(
                          "DropShip",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.grey,
                            fontWeight: FontWeight.w800,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
