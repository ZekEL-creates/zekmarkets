import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/components/grid_view_builder.dart';
import 'package:marketstreetapp/components/tab_bar_builder.dart';
import 'package:marketstreetapp/items/lists.dart';
import 'package:marketstreetapp/widgets/button.dart';
import 'package:marketstreetapp/widgets/header_text.dart';
import 'package:marketstreetapp/widgets/text_field_shadow.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Map<String, dynamic> nameEdition = {
  //   'names': ['Mulberry Clutch', 'Gucci Black', 'Van Heusen', 'Kate Spade'],
  //   'editions': ['Series 7', 'Series 4', 'All Series', 'Pro Series'],
  // };

  List<Widget> tab = [
    Tab(child: Text('Electronics', style: TextStyle(fontSize: 16))),
    Tab(child: Text('Furnitures', style: TextStyle(fontSize: 16))),
    Tab(child: Text('Fashion', style: TextStyle(fontSize: 16))),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(left: 23.0, right: 23),
          child: Column(
            children: [
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Find your suitable',
                        style: HeaderText.textStyle().copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 33,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'product now.',
                        style: HeaderText.textStyle().copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 33,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Appcolors.bluegradientDark,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Textfield(
                hint: 'Search your stuff here',
                prefixIcon: Icon(Icons.search_sharp),
                suffixIcon: Icon(Icons.tune),
                borderRadius: BorderRadius.circular(40),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TabBarBuilder(tab: tab, controller: _tabController),
                  ),
                  Button(
                    onPressed: () {},
                    identifier: 'All',
                    width: 60,
                    height: 35,
                    fontSize: 15,
                  ),
                ],
              ),

              SizedBox(height: 20),
              Expanded(
                child: Center(
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      GridViewBuilder(
                        controller: _tabController,
                        itemCount: itemImage.length,
                        images: itemImage,
                        itemName: names,
                        itemEdition: editions,
                      ),
                      Center(child: Text('Furnitures')),
                      Center(child: Text('Fashion')),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// TabBarView(
//                     controller: _tabController,
//                     children: [
//                       GridView.builder(
//                         itemCount: images.length,
//                         padding: EdgeInsets.all(2),
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2,
//                           mainAxisSpacing: 15,
//                           crossAxisSpacing: 15,
//                           childAspectRatio: 0.7,
//                         ),
//                         itemBuilder: ((context, index) {
//                           return Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(12),
//                               color: Colors.white,
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.grey.withOpacity(0.05),
//                                   offset: Offset(0, 1),
//                                   blurRadius: 100,
//                                 ),
//                               ],
//                             ),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   ClipRRect(
//                                     borderRadius: BorderRadius.circular(18),
//                                     child: Image(
//                                       image: AssetImage(images[index]),
//                                       fit: BoxFit.cover,
//                                       height: 80,
//                                       width: 140,
//                                     ),
//                                   ),
//                                   SizedBox(height: 10),
//                                   Text(
//                                     nameEdition['names'][index],
//                                     style: TextStyle(
//                                       fontSize: 18,
//                                       fontWeight: FontWeight.w700,
//                                     ),
//                                   ),
//                                   SizedBox(height: 5),
//                                   Text(nameEdition['editions'][index]),
//                                   SizedBox(height: 17),
//                                   Text(
//                                     'N5,000',
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w900,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         }),
//                       ),
//                       Center(child: Text('Furnitures')),
//                       Center(child: Text('Fashion')),
//                     ],
//                   )
