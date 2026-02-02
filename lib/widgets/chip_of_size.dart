import 'package:flutter/material.dart';

class ChipOfSize extends StatefulWidget {
  const ChipOfSize({super.key});

  @override
  State<ChipOfSize> createState() => _ChipOfSizeState();
}

class _ChipOfSizeState extends State<ChipOfSize> {
  List<String> chips = ['6 UK', '7 UK', '8 UK', '9 UK', '10 UK'];
  String selectedSize = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: AlignmentGeometry.topLeft,
          child: Text(
            'Size : $selectedSize',
            style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),
          ),
        ),
        Wrap(
          children: chips.map((size) {
            return ChoiceChip(
              label: Text(size),
              selected: selectedSize == size,
              onSelected: (value) {
                setState(() {
                  selectedSize = size;
                });
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
