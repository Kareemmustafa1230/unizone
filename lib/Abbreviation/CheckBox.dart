import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  bool?_isRemember = false ;

  @override
  Widget build(BuildContext context) {
    return
      Transform.scale(
        alignment: Alignment.topRight,
        scale: 0.7,
        child: Checkbox(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          side: const BorderSide(width: 0.7,color: Colors.grey),
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
