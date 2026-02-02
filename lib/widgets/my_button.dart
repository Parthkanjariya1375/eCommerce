import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback onclick;
  final Widget child;
  final double width, height;
  final Color bgColor, fgColor;
  const MyElevatedButton({
    super.key,
    required this.onclick,
    required this.child,
    this.width = 0.80,
    this.height = 50,
    this.bgColor = Colors.pinkAccent,
    this.fgColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onclick,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.widthOf(context) * width, height),
        backgroundColor: bgColor,
        foregroundColor: fgColor,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: child,
    );
  }
}
