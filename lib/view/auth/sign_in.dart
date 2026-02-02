import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/auth/forgot_password.dart';

import 'package:stylish_ecommerce/view/auth/sign_up.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

import '../get_started/get_started.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool showAndHide = true;

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
                      'Welcome\nBack!',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: TextFormField(
                  controller: emailController,
                  validator: (String? data) {
                    return isEmail(data) ? null : "Enter Valid Email";
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hint: Text('Enter Email'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 29),
                child: TextFormField(
                  controller: passwordController,
                  validator: (String? data) {
                    return isPassword(data) ? null : 'Enter valid password';
                  },
                  obscureText: showAndHide,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hint: Text('Password'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          showAndHide = !showAndHide;
                        });
                      },
                      icon: Icon(Icons.remove_red_eye_rounded),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: TextButton(
                      onPressed: () {
                        context.goToNext(ForgotPassword());
                      },
                      child: Text('Forgot Password?'),
                    ),
                  ),
                ],
              ),
              MyElevatedButton(
                onclick: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Future.delayed(Duration(seconds: 2), () async {
                      final preferences = await SharedPreferences.getInstance();
                      preferences.setBool('isLoggedIn', true);
                      context.goToNextWithRemoveUntil(GetStarted());
                    });
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                child: Text('Login', style: TextStyle(fontSize: 18)),
              ),

              SizedBox(height: 80),
              Text('- Or Continue with -'),
              SizedBox(height: 20),
              Row(
                spacing: 15,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(child: Image.asset('assets/Google.png')),
                  CircleAvatar(child: Image.asset('assets/Apple.png')),
                  CircleAvatar(child: Image.asset('assets/Facebook (1).png')),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Create An Account'),
                  TextButton(
                    onPressed: () {
                      context.goToNext(SignUp());
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String? data) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(data ?? "");
  }

  bool isPassword(String? data) {
    return RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
    ).hasMatch(data ?? '');
  }
}
