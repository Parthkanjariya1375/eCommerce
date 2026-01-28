import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 63, left: 32),
                  child: Text(
                    'Forgot\npassword?',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hint: Text('Enter your email address'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'We will send you a message to set or reset\nyou new password',
            ),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.widthOf(context)*0.80, 50),
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: Text('Submit',style: TextStyle(fontSize: 18)),
              ),
          ],
        ),
      ),
    );
  }
}
