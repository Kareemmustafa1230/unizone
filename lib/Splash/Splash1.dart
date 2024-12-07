import 'package:flutter/material.dart';
import 'package:unizone/Splash/Const%20Splash.dart';
import 'Splash.dart';
import 'Splash2.dart';
class Splash1 extends StatelessWidget {
  static const String routeName = 'Splash1';

  const Splash1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Splash( images: 'assets/images/Blog post-bro (1) 1.png', text1: 'Online Study is the', text2: 'Best choice for \neveryone'),
            const SizedBox(height:35),
            const ConstSplash(color1: Color(0xFF80D0EE), color2: Color(0xFF80D0EE), page: Splash2()),
          ],
        ),
      ),
    );
  }
}
