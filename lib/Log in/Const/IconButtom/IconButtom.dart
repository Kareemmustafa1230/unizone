import 'package:flutter/material.dart';

class IconButtonMdiIcons extends StatelessWidget {
  final IconData icon;

  const IconButtonMdiIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon, color: Colors.blue, size: 35),
      onPressed: () {},
    );
  }
}
