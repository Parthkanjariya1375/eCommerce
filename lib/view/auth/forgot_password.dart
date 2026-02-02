import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/auth/sign_in.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          autovalidateMode: _autovalidateMode,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 63, left: 32),
                    child: Text(
                      'Forgot\npassword?',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: TextFormField(
                  validator: (String? data) {
                    return isEmail(data) ? null : 'Enter valid Email';
                  },
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
              MyElevatedButton(
                onclick: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    context.goback(SignIn());
                  }
                },
                child: Text('Submit', style: TextStyle(fontSize: 18)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String? data) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(data ?? '');
  }
}
