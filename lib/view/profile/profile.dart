import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/auth/sign_in.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController pincodeController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController accNumberController = TextEditingController();
  TextEditingController accHolderController = TextEditingController();
  TextEditingController ifscCodeController = TextEditingController();

  Future<void> loadProfile() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    emailController.text = preferences.getString('email') ?? '';
    passwordController.text = preferences.getString('password') ?? '';
    pincodeController.text = preferences.getString('pincode') ?? '';
    addressController.text = preferences.getString('address') ?? '';
    cityController.text = preferences.getString('city') ?? '';
    stateController.text = preferences.getString('state') ?? '';
    countryController.text = preferences.getString('country') ?? '';
    accNumberController.text = preferences.getString('accNumber') ?? '';
    accHolderController.text = preferences.getString('accHolder') ?? '';
    ifscCodeController.text = preferences.getString('ifscCode') ?? '';
    setState(() {});
  }

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
                  controller: emailController,
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
                  controller: passwordController,
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
                  controller: pincodeController,
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
                  controller: addressController,
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
                  controller: cityController,
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
                  controller: stateController,
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
                  controller: countryController,
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
                  controller: accNumberController,
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
                  controller: accHolderController,
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
                  controller: ifscCodeController,
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
                    onclick: () async {
                      final preferences = await SharedPreferences.getInstance();
                      await preferences.setString(
                        'email',
                        emailController.text,
                      );
                      await preferences.setString(
                        'password',
                        passwordController.text,
                      );
                      await preferences.setString(
                        'pincode',
                        pincodeController.text,
                      );
                      await preferences.setString(
                        'address',
                        addressController.text,
                      );
                      await preferences.setString('city', cityController.text);
                      await preferences.setString(
                        'state',
                        stateController.text,
                      );
                      await preferences.setString(
                        'country',
                        countryController.text,
                      );
                      await preferences.setString(
                        'accNumber',
                        accNumberController.text,
                      );
                      await preferences.setString(
                        'accHolder',
                        accHolderController.text,
                      );
                      await preferences.setString(
                        'ifscCode',
                        ifscCodeController.text,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          backgroundColor: Colors.black,
                          duration: Duration(seconds: 1),
                          content: Text('Profile Saved'),
                        ),
                      );
                    },
                    child: Text('Save', style: TextStyle(fontSize: 18)),
                  ),
                ),
                Align(
                  alignment: .topCenter,
                  child: TextButton(onPressed: () async {
                    final preferences = await SharedPreferences.getInstance();
                    await preferences.setBool('isLoggedIn', false);
                    context.goToNextWithRemoveUntil(SignIn());
                  }, child: Text('Logout')),
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
