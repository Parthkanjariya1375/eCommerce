import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

class PlaceOrder extends StatefulWidget {
  final String image, title, description, price;
  const PlaceOrder({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Shopping Bag'), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children: [
              SizedBox(
                height: 300,
                child: Column(
                  spacing: 10,
                  children: [
                    Expanded(child: Image.asset(widget.image)),
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.description,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Price : ${widget.price}',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w800,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              MyElevatedButton(
                onclick: () {},
                child: Text(
                  'Proceed to Payment',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
