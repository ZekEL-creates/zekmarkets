import 'package:flutter/material.dart';
import 'package:marketstreetapp/colors/colors.dart';
import 'package:marketstreetapp/components/navigation_menu_icon.dart';
import 'package:marketstreetapp/pages/cart_page.dart';
import 'package:marketstreetapp/pages/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

List pages = [
  HomePage(),
  CartPage(),
  Center(child: Text('Favorite')),
  Center(child: Text('User')),
];

class _MainPageState extends State<MainPage> {
  Menus currentMenu = Menus.home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentMenu.index],
      bottomNavigationBar: CustomBottomNavBar(
        onTap: (value) {
          setState(() {
            currentMenu = value;
          });
        },
        currentMenu: currentMenu,
      ),

      // Container(
      //   height: 70,
      //   margin: EdgeInsets.only(top: 0, bottom: 20, right: 10, left: 10),
      //   decoration: BoxDecoration(
      //     borderRadius: BorderRadius.circular(20),
      //     gradient: LinearGradient(
      //       colors: [Appcolors.bluegradientLight, Appcolors.bluegradientDark],
      //       begin: Alignment.topCenter,
      //       end: Alignment.bottomCenter,
      //     ),
      //   ),
      //   child: BottomNavigationBar(
      //     backgroundColor: Colors.transparent,
      //     elevation: 0,
      //     selectedItemColor: Appcolors.bluegradientDark,
      //     unselectedItemColor: Colors.white,
      //     showSelectedLabels: true,
      //     showUnselectedLabels: false,
      //     type: BottomNavigationBarType.fixed,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_outlined),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.shopping_cart_outlined),
      //         label: 'Cart',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite_border_outlined),
      //         label: 'Favorites',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person_outline),
      //         label: 'User',
      //       ),
      //     ],
      //     currentIndex: currentIndex,
      //     onTap: (index) {
      //       setState(() {
      //         currentIndex = index;
      //       });
      //     },
      //   ),
      // ),
    );
  }
}

enum Menus { home, cart, favorite, user }

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.onTap,
    required this.currentMenu,
  });
  final ValueChanged<Menus> onTap;
  final Menus currentMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 8),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        gradient: LinearGradient(
          colors: [Appcolors.bluegradientLight, Appcolors.bluegradientDark],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            child: NavigationMenuIcon(
              currentMenu: currentMenu,
              onPressed: () => onTap(Menus.home),
              selectedMenu: Menus.home,
              icon: Icons.home_outlined,
            ),
          ),
          Expanded(
            child: NavigationMenuIcon(
              currentMenu: currentMenu,
              onPressed: () => onTap(Menus.cart),
              selectedMenu: Menus.cart,
              icon: Icons.shopping_cart_outlined,
            ),
          ),
          Expanded(
            child: NavigationMenuIcon(
              currentMenu: currentMenu,
              onPressed: () => onTap(Menus.favorite),
              selectedMenu: Menus.favorite,
              icon: Icons.favorite_border_sharp,
            ),
          ),
          Expanded(
            child: NavigationMenuIcon(
              currentMenu: currentMenu,
              onPressed: () => onTap(Menus.user),
              selectedMenu: Menus.user,
              icon: Icons.person_outline_sharp,
            ),
          ),
        ],
      ),
    );
  }
}
