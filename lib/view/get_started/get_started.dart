import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/home/home_page.dart';

import '../../../widgets/my_button.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/get started bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 37,
            top: 552,
            child: Column(
              children: [
                Text(
                  'You want\nAuthentic, here\nyou go!',
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  'Find it here,buy it now!',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 10),
                MyElevatedButton(
                  onclick: () {
                    context.goToNextWithRemoveUntil(HomePage());
                  },
                  child: Text('Explore App', style: TextStyle(fontSize: 23)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
