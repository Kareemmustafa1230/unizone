import 'package:flutter/material.dart';
import '../Abbreviation/Navation.dart';

class GoToLogIn extends StatelessWidget {
  const GoToLogIn({super.key,required this.texts1,required this.widget, required this.texts2});
  final String texts1 ;
  final String texts2 ;
  final Widget widget ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(texts1,
          style: const TextStyle(color: Color(0xFF252525), fontWeight: FontWeight.w500, fontSize: 14),),
        InkWell(
            onTap: () => Navigator.pushReplacement(context, SizeTransition6( widget)),
          child:  Text(texts2,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: Color(0xFF00A0DC),),),
        ),
      ],
    );
  }
}
