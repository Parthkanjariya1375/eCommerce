import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onclick;
  final Widget child;
  final double width, height;
  const MyElevatedButton({
    super.key,
    required this.onclick,
    required this.child,
    this.width = 0.80,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclick,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.widthOf(context) * width, height),
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.white,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: child,
    );
  }
}
