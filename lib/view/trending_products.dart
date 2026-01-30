import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home_page.dart';
import 'package:stylish_ecommerce/widgets/product_card.dart';

List<StaggeredGridTile> _trendingTile = [
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/Trending_pro_1.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/trending_pro_2.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/Trending_pro_4.png',
      title: 'Black Dress',
      description: 'Solid Black Dress for Women,Sexy Chain Shorts',
      price: 'rs. 1,999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/trending_pro_3.png',
      title: 'Pink Embroider',
      description: 'EARTHEN Rose Pink Embroidered Tiered Max',
      price: 'rs. 1,899',
    ),
  ), // 1st half
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/trending_pro_21.png',
      title: 'Flare Dress',
      description: 'Antheaa Black & Rust Orange Floral Print Tiered.',
      price: 'rs. 1,990',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/trending_pro_22.png',
      title: 'Denim Dress',
      description: 'Blue cotton denim dress Look 2 Printed cotton',
      price: 'rs. 999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/trending_pro_23.png',
      title: 'Jordan stay',
      description: 'The classic Air Jordan 12 to create a shoe',
      price: 'rs. 4,999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/trending_pro_24.png',
      title: 'Realme 7',
      description: '6 GB RAM | 64 GB ROM Expandable Upto 256',
      price: 'rs. 3,499',
    ),
  ), //2nd half
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/trending_pro_31.png',
      title: 'Sony PS4',
      description: 'Sony PS4 Console 1TB Slim with 3 Games:',
      price: 'rs. 1,999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/trending_pro_32.png',
      title: 'Black jacket',
      description: 'This warm and comfortable',
      price: 'rs. 2,999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.7,
    child: ProductCard(
      image: 'assets/trending_pro_33.png',
      title: 'Digital Camera',
      description: 'D7200 Digital Camera (Nikon) In New Area',
      price: 'rs. 26,999',
    ),
  ),
  StaggeredGridTile.count(
    crossAxisCellCount: 1,
    mainAxisCellCount: 1.4,
    child: ProductCard(
      image: 'assets/trending_pro_34.png',
      title: 'Formal Shoes',
      description: 'George Walker Derby Brown Formal Shoes',
      price: 'rs. 999',
    ),
  ),
];

class TrendingProducts extends StatelessWidget {
  const TrendingProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.keyboard_voice_outlined),
                    hint: Text('Search any Product'),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      '52,082+ Items',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: _trendingTile,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: .spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                context.goback(HomePage());
              },
              icon: Icon(Icons.home_outlined),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: Colors.white,
        child: Icon(Icons.shopping_cart_outlined),
        onPressed: () {},
      ),
    );
  }
}
