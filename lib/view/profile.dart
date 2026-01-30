

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: .center,
              children: [
                CircleAvatar(
                  radius: 45,
                  child: Icon(Icons.person,size: 50),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: Row(
                mainAxisAlignment: .start,
                children: [
                  Text('Personal Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
