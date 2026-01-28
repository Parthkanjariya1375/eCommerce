import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/utils/navigation_extenstion.dart';
import 'package:stylish_ecommerce/view/forgot_password.dart';
import 'package:stylish_ecommerce/view/get_started.dart';
import 'package:stylish_ecommerce/view/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                    'Welcome\nBack!',
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 32, right: 32),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hint: Text('Username 0r Email'),
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
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  filled: true,
                  fillColor: Colors.grey[300],
                  hint: Text('Password'),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: Icon(Icons.remove_red_eye_rounded),
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
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(MediaQuery.widthOf(context)*0.80, 50),
                  backgroundColor: Colors.pinkAccent,
                  foregroundColor: Colors.white,
                  shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {
                  if(emailController.text.isNotEmpty && passwordController.text.isNotEmpty){
                    Future.delayed(Duration(seconds: 2),(){
                      context.goToNextWithRemoveUntil(GetStarted());
                    });
                  }
                },
                child: Text('Login',style: TextStyle(fontSize: 18)),
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
    );
  }
}
