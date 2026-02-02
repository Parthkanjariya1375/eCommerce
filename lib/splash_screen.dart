import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 2), () {
      if (context.mounted) {
        context.goToNextWithReplace(HomePage());
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/splash_logo.png', width: 300)),
    );
  }
}
