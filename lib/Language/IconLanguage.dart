import 'package:flutter/material.dart';

class IconLanguage extends StatelessWidget {
  final Color colors;
  final Color background;
  final String text;
  final Function() onPressed;
   const IconLanguage({required this.text, required this.onPressed, super.key, required this.colors, required this.background});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            minimumSize: const Size(300, 52),
            backgroundColor: background,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),side: const BorderSide(color: Colors.purple,width: 2),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: colors,
            fontSize: 19,
            fontFamily: 'R.font.roboto',
            fontWeight: FontWeight.w700,
          ),
        ));
  }
}
