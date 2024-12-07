import 'package:flutter/material.dart';
import '../Abbreviation/Navation.dart';
import '../Splash/Splash1.dart';
import 'IconLanguage.dart';

// ignore: camel_case_types
class Language extends StatelessWidget {
  const Language({super.key});
  static const String routeName = 'language';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: Column(
            children: [
              const SizedBox(height: 150,),
              Image.asset('assets/images/Group 145.png'),
              const SizedBox(height: 50,),
              const Text('اختار لغة التطبيق',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 20,),
              IconLanguage(text: 'English', onPressed: () => Navigator.pushReplacement(context, SizeTransition6(const Splash1()),), colors: const Color(0xFF00A0DC), background: Colors.transparent),
              const SizedBox(height: 20,),
              IconLanguage(text: 'العربية',onPressed: () => Navigator.pushReplacement(context, SizeTransition6(const Splash1()),), colors: const Color(0xFF00A0DC), background: Colors.transparent),
              //IconLanguage(text: 'English', onPressed: () => Navigator.pushReplacement(context, SizeTransition6(const Splash1()),), colorstext: const Color(0xFF00A0DC), background: Colors.transparent),
              //IconLanguage(text: 'العربية',onPressed: () => Navigator.pushReplacement(context, SizeTransition6(const Splash1()),), colorstext: const Color(0xFF00A0DC), background: Colors.transparent),
            ],
          ),
       ),
    );
  }
}
