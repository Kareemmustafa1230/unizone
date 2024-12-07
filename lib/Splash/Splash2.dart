import 'package:flutter/material.dart';
import 'package:unizone/Splash/Splash3.dart';
import 'Const Splash.dart';
import 'Splash.dart';

class Splash2 extends StatelessWidget {
  static const String routeName = 'Splash2';

  const Splash2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Splash( images: 'assets/images/Website Creator-bro (1) 1.png', text1: 'Learn Anytime,', text2: 'Anywhere. Accelerate\nYour Future and beyond.'),
          const SizedBox(height:35),
          const ConstSplash(color1: Color(0xFF00A0DC), color2: Color(0xFF80D0EE), page: Splash3()),
        ],
      ),
      ),
    );
  }
}
