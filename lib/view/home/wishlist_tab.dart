import 'package:flutter/material.dart';
import 'package:staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../widgets/product_card_staggered.dart';

class WishlistTab extends StatelessWidget {
  final listProduct = [
    ProductCard(
      image: 'assets/Trending_pro_1.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/trending_pro_2.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
    ProductCard(
      image: 'assets/trending_pro_3.png',
      title: 'Pink Embroide',
      description: 'EARTHEN Rose Pink Embroidered Tiered Max',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/Trending_pro_4.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
    ProductCard(
      image: 'assets/trending_pro_21.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/trending_pro_22.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
    ProductCard(
      image: 'assets/trending_pro_23.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/trending_pro_24.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
    ProductCard(
      image: 'assets/trending_pro_31.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/trending_pro_32.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
    ProductCard(
      image: 'assets/trending_pro_33.png',
      title: 'Black Hoodie',
      description: 'Autumn And Winter Casual cotton-padded jacket',
      price: 'rs. 499',
    ),
    ProductCard(
      image: 'assets/trending_pro_34.png',
      title: 'Mens starry',
      description: 'Mens Starry Sky Printed Shirt 100% Cotton Fabric',
      price: 'rs. 399',
    ),
  ];

  WishlistTab({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.builder(
      gridDelegate: SliverStaggeredGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        staggeredTileBuilder: (index) {
          return StaggeredTile.fit(1);
        },
      ),
      itemBuilder: (context, index) {
        return listProduct[index];
      },
      itemCount: listProduct.length,
    );
  }
}
