import 'package:flutter/material.dart';

class ItemShowAddBottom2 extends StatelessWidget {
  final String texts;
  final IconData icon;

  const ItemShowAddBottom2({Key? key, required this.texts, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Icon(icon, size: 30,),
          const SizedBox(width: 12),
          Text(texts,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
