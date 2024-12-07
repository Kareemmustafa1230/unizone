import 'package:flutter/material.dart';
import 'package:unizone/Log%20in/Sign%20in.dart';
import 'package:unizone/Log%20in/TextFormField.dart';
import 'package:unizone/Sign%20up/GoToLogIn.dart';
import 'package:unizone/Sign%20up/TextSpan.dart';
import '../Abbreviation/Navation.dart';
import '../Abbreviation/button_utils.dart';
import 'TransFormScale.dart';

class SignUp extends StatefulWidget {
  static const String routeName = 'Sign-Up';
  const SignUp({super.key});
  @override
  State<SignUp> createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController validEmailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();
  final TextEditingController strongPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 32),
              Image.asset('assets/images/Sign up-amico 1.png'),
              const SizedBox(height: 35),
              TextFormFields(
                controller: fullNameController,
                labelText: 'Full Name',
                hintText: 'Enter your full name',
                keyboardType: TextInputType.name,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Full Name is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 15),
              TextFormFields(
                controller: validEmailController,
                labelText: 'Valid email',
                hintText: 'Enter a valid Email',
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 15),
              TextFormFields(
                controller: phoneNumberController,
                labelText: 'Phone Number',
                hintText: 'Enter your Phone Number',
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone Number is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 15),
              TextFormFields(
                controller: strongPasswordController,
                labelText: 'Strong Password',
                hintText: 'Enter a strong password',
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  return 'null';
                },
              ),
              const SizedBox(height: 15),
              TextFormFields(
                controller: confirmPasswordController,
                labelText: 'Confirm Password',
                hintText: 'Enter a Confirm Password',
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Password is required';
                  }
                  return 'null';
                },
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25,right: 30,left:2),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TransFormScale(),
                    MyTextSpan(),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              ButtonApp(text: 'Sign Up',
                  onPressed: (){
                    Navigator.pushReplacement(context, SizeTransition6(const SignIn()));},
                  colorstext: Colors.white, background: const Color(0xFF00A0DC)),
              const SizedBox(height: 24),
              const GoToLogIn(texts1: 'Already a member?', widget: SignIn(), texts2: 'Log In',),
            ],
          ),
        ),
      ),
    );
  }
}
