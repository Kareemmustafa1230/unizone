import 'package:flutter/material.dart';

class ColumnItem extends StatelessWidget {
  final String texts;
  final Color color;
  final IconData icon;

  const ColumnItem({Key? key, required this.texts, required this.color,required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8),
      width: double.infinity,
      height: 50,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Icon(icon,size: 28,color: const Color(0xFF00A0DC)),
          const SizedBox(width: 10),
          Text(texts,style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16)),
        ],
      ),
    );
  }
}
