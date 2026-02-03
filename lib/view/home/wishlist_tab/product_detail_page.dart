import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/buy/place_oreder.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';
import '../../../models/cart_item_model.dart';

List<CartItemModel> cartItems = [];

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
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                MyElevatedButton(
                  bgColor: Colors.white,
                  fgColor: Colors.black,
                  width: 0.45,
                  onclick: () {
                    cartItems.add(
                      CartItemModel(
                        image: image,
                        title: title,
                        description: description,
                        price: price,
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        content: Text(
                          'Added To Cart',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.shopping_cart_outlined),
                      Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                MyElevatedButton(
                  width: 0.45,
                  onclick: () {
                    context.goToNext(
                      PlaceOrder(
                        image: image,
                        title: title,
                        description: description,
                        price: price,
                      ),
                    );
                  },
                  child: Row(
                    spacing: 10,
                    children: [
                      Icon(Icons.attach_money_outlined),
                      Text(
                        'Buy Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
