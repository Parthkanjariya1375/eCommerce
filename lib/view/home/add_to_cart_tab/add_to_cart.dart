import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/view/home/wishlist_tab/product_detail_page.dart';

class AddToCart extends StatefulWidget {
  const AddToCart({super.key});
  @override
  State<AddToCart> createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Added Items')),
      body: cartItems.isEmpty
          ? Center(child: Text('Cart is Empty'))
          : ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.asset(cartItems[index].image),
                  title: Text(cartItems[index].title),
                  subtitle: Text(cartItems[index].description),
                  trailing: Column(
                    children: [
                      Text(cartItems[index].price),
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              cartItems.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.remove),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
