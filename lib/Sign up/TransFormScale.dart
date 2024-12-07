import 'package:flutter/material.dart';

class TransFormScale extends StatefulWidget {
  static const String routeName = 'Sign-Up';

  const TransFormScale({super.key});

  @override
  State<TransFormScale> createState() => _SignUpState();
}

class _SignUpState extends State<TransFormScale> {
  bool?_isRemember = false;

  @override
  Widget build(BuildContext context) {
   return Transform.scale(
      alignment: Alignment.topRight,
      //scale: 0.7,
      scaleX: 0.6,
      scaleY: 0.7,
      child: Checkbox(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5)),
        side: const BorderSide(width: 0.7, color: Colors.grey),
        value: _isRemember,
        onChanged: (bool? value) {
          setState(() {
            _isRemember = value;
          });
        },
      ),
    );
  }
}