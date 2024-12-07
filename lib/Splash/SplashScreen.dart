import 'dart:async';
import 'package:flutter/material.dart';
import '../Language/language.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = 'Splash-Screen';
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3),(){
      Navigator.of(context).pushNamed(Language.routeName);
    });
    return const Scaffold(
      backgroundColor: Color(0xFF00A0DC),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('unizone',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontFamily: 'font1',
              ),
            ),
          ],
        ),
      ),
    );
  }
}



