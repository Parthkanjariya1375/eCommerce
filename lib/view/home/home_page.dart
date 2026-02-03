import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home/add_to_cart_tab/add_to_cart.dart';
import 'package:stylish_ecommerce/view/home/home_tab/home_tab.dart';
import 'package:stylish_ecommerce/view/profile/profile.dart';
import 'package:stylish_ecommerce/view/home/search_tab/search_tab.dart';
import 'package:stylish_ecommerce/view/home/setting_tab/setting_tab.dart';
import 'package:stylish_ecommerce/view/home/wishlist_tab/wishlist_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController = PageController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(width: 110, height: 80, 'assets/splash_logo.png'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: IconButton(
                onPressed: () {
                  context.goToNext(Profile());
                },
                icon: Icon(Icons.person),
              ),
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Header")),
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
            ListTile(title: Text('Item 3')),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        children: [HomeTab(), WishlistTab(), SearchTab(), SettingTab()],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.favorite_border_outlined),
            label: "Wishlist",
          ),
          NavigationDestination(
            icon: Icon(Icons.search_outlined),
            label: "Search",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings_outlined),
            label: "Settings",
          ),
        ],
        onDestinationSelected: (index) {
          pageController.jumpToPage(index);
        },
        selectedIndex: _currentIndex,
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.white,
        child: Icon(Icons.shopping_cart_outlined),
        onPressed: () {
          context.goToNext(AddToCart());
        },
      ),
    );
  }
}
