import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final Color colorstext;
  final Color background;
  final String text;
  final Function() onPressed;
  const ButtonApp(
      {required this.text,
      required this.onPressed,
      super.key,
      required this.colorstext,
      required this.background});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: const Size(300, 52),
            backgroundColor: background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colorstext,
            fontSize: 19,
            fontFamily: 'R.font.roboto',
            fontWeight: FontWeight.w700,
          ),
        ));
  }
}
