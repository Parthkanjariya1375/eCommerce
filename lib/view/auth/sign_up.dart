import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/auth/sign_in.dart';
import 'package:stylish_ecommerce/widgets/my_button.dart';

import '../get_started/get_started.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;
  TextEditingController userOrEmailController = TextEditingController();

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
                      'Create an\naccount',
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
                  controller: userOrEmailController,
                  validator: (String? email) {
                    return isEmail(email) ? null : 'Enter valid Email';
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
                  validator: (String? pass) {
                    return isPassword(pass) ? null : 'Enter valid Password';
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
                      icon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.only(left: 29, right: 29),
                child: TextFormField(
                  validator: (String? pass2) {
                    if (!isPassword(pass2)) {
                      return 'Enter valid Password';
                    }
                    return isPasswordConfirm(passwordController.text, pass2)
                        ? null
                        : 'Please match both Password';
                  },
                  obscureText: showAndHide,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.grey[300],
                    hint: Text('Confirm Password'),
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
              SizedBox(height: 35),
              MyElevatedButton(
                onclick: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    Future.delayed(Duration(seconds: 2), () {
                      context.goToNextWithRemoveUntil(GetStarted());
                    });
                  } else {
                    setState(() {
                      _autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                child: Text('Create account', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 70),
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
                  Text('I Already Have an Account'),
                  TextButton(
                    onPressed: () {
                      context.goback(SignIn());
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isEmail(String? email) {
    return RegExp(
      r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
    ).hasMatch(email ?? '');
  }

  bool isPassword(String? pass) {
    return RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$',
    ).hasMatch(pass ?? '');
  }

  bool isPasswordConfirm(String? pass1, String? pass2) {
    return pass1 == pass2;
  }
}
