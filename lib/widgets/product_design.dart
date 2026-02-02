import 'package:flutter/material.dart';

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
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: .circular(12)
      ),
      child: Column(
        children: [
          Image.asset(image, height: 100),
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
    );
  }
}
