import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import '../../../widgets/product_card_staggered.dart';

class WishlistTab extends StatelessWidget {
  const WishlistTab({super.key});

  @override
  Widget build(BuildContext context) {

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
        price: 'rs. 1900',
      ),
      ProductCard(
        image: 'assets/Trending_pro_4.png',
        title: 'Black Dress',
        description: 'Solid Black Dress for Women, Sexy Chain Shorts Ladi',
        price: 'rs. 2000',
      ),
      ProductCard(
        image: 'assets/trending_pro_21.png',
        title: 'Flare Dress',
        description: 'Antheaa Black & Rust Orange Floral Print Tiered Midi',
        price: 'rs. 1990',
      ),
      ProductCard(
        image: 'assets/trending_pro_22.png',
        title: 'Denim Dress',
        description: 'Blue cotton denim dress Look 2 Printed cotton dress',
        price: 'rs. 999',
      ),
      ProductCard(
        image: 'assets/trending_pro_23.png',
        title: 'Jordan Stay',
        description: 'The classic Air Jordan 12 to create a shoe that',
        price: 'rs. 4999',
      ),
      ProductCard(
        image: 'assets/trending_pro_24.png',
        title: 'Realme 7',
        description: '6 GB RAM | 64 GB ROM | Expandable Upto 256',
        price: 'rs. 3499',
      ),
      ProductCard(
        image: 'assets/trending_pro_31.png',
        title: 'Sony PS4',
        description: 'Sony PS4 Console, 1TB Slim with 3 Games: Gran Turis',
        price: 'rs. 1999',
      ),
      ProductCard(
        image: 'assets/trending_pro_32.png',
        title: 'Black Jacket',
        description: 'This warm and comfortable jacket is great for learni',
        price: 'rs. 2999',
      ),
      ProductCard(
        image: 'assets/trending_pro_33.png',
        title: 'Digital Camera',
        description: 'D7200 Digital Camera (Nikon) In New Area...',
        price: 'rs. 26999',
      ),
      ProductCard(
        image: 'assets/trending_pro_34.png',
        title: 'Man shoes',
        description: 'George Walker Derby Brown Formal Shoes',
        price: 'rs. 999',
      ),
    ];
    return  MasonryGridView.builder(
      gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        return listProduct[index];
      },
      itemCount: listProduct.length,
    );
  }
}
