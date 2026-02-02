import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';

class ProductDetailPage extends StatelessWidget {
  final String image, title, description, price;
  const ProductDetailPage({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.goback();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            tooltip: 'Add To Cart',
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 10,
          children: [
            Hero(
              tag: image,
              child: Image.asset(image, height: 280, fit: .fill),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              textAlign: TextAlign.center,
            ),
            Text(
              'price : $price',
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w800,
                decoration: TextDecoration.underline,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[100],
                borderRadius: .circular(12),
              ),
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text(
                  'Delivery in within 1 Hour',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
