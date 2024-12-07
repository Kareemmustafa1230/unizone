import 'package:flutter/material.dart';
import '../Log in/Sign in.dart';
import 'Const Splash.dart';
import 'Splash.dart';
class Splash3 extends StatelessWidget {
  static const String routeName = 'Splash3';
  const Splash3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Splash( images: 'assets/images/Code review-bro (1) 1.png', text1: 'Best platform for both', text2: 'Teachers & Learners'),
          const SizedBox(height:55),
           const ConstSplash(color1: Color(0xFF00A0DC), color2: Color(0xFF80D0EE), page: SignIn()),
        ],
      ),
      ),
    );
  }
}
