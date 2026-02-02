import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              spacing: 10,
              crossAxisAlignment: .start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 45,
                    child: Icon(Icons.person, size: 50),
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Personal Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Email Address',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'Password',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentGeometry.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Change Password'),
                  ),
                ),
                Divider(indent: 30, endIndent: 30, thickness: 2),
                Text(
                  'Business Address Detail',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Pincode',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'Address',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'City',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'State',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'Country',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Divider(indent: 30, endIndent: 30, height: 65),
                Text(
                  'Bank Account Details',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Text(
                  'Bank Account Number',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'Account Holder Name',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Text(
                  'IFSC Code',
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: AlignmentGeometry.topCenter,
                  child: MyElevatedButton(
                    onclick: () {},
                    child: Text('Save', style: TextStyle(fontSize: 18)),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
