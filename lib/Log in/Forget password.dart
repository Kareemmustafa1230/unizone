import 'package:flutter/material.dart';
import 'package:unizone/Log%20in/TextFormField.dart';
import '../Abbreviation/button_utils.dart';
import 'Code Flrget Password.dart';

class ForgetPassword extends StatelessWidget {
  static const String routeName = 'Forget-password';
  final TextEditingController emailController = TextEditingController();
  ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height:60),
              Image.asset('assets/images/Tablet login-amico s (1).png'),
              const SizedBox(height: 20),
              const Text('Please enter your email address to receive',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Color(0xFF000000),
                ),
              ),
              const Text('verification code.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                color: Color(0xFF00A0DC),
              ),
              ),
              const SizedBox(height: 72),
              TextFormFields(controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Enter your email',
                  hintText: 'Enter your email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email is required';
                  }
                  return "null";
                },
              ),
              const SizedBox(height: 91),
              ButtonApp(text: 'Send', onPressed: (){ Navigator.of(context).pushNamed(CodeForgetPassword.routeName);}, colorstext: Colors.white, background: const Color(0xFF00A0DC)),
            ],
          ),
        ),
      ),
    );
  }
}