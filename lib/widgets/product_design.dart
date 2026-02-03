import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home/wishlist_tab/product_detail_page.dart';

class ProductDesign extends StatelessWidget {
  final String title, prize, image;
  final String? description;
  const ProductDesign({
    super.key,
    required this.title,
    this.description,
    required this.prize,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.goToNext(
          ProductDetailPage(
            image: image,
            title: title,
            description: description ?? '',
            price: prize,
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Hero(tag: image, child: Image.asset(image, height: 100)),
            Text(
              title,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),

            if (description != null)
              Text(
                description ?? '',
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            Text(
              prize,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
