import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/view/home/wishlist_tab/product_detail_page.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';

class ProductCard extends StatelessWidget {
  final String image, title, description, price;
  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goToNext(
          ProductDetailPage(
            image: image,
            title: title,
            description: description,
            price: price,
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: SizedBox(
          width: 150,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Hero(tag: image, child: Image.asset(image)),
              Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              Text(
                price,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
