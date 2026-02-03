import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_ecommerce/view/on_boarding/on_bording_screen.dart';

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
      checkValue();
    });
  }

  Future<void> checkValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getBool('isLoggedIn') ?? false) {
      context.goToNext(HomePage());
    } else {
      context.goToNext(OnBordingScreen());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/splash_logo.png', width: 300)),
    );
  }
}
