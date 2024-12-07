import 'package:flutter/material.dart';

class ItemMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  const ItemMenu({Key? key, required this.text, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: 188.5,
        height: 60 ,
        padding: const EdgeInsets.only(left: 12,),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1,
              offset: const Offset(1, 1),
            ),
          ],
          color: const Color(0xFFffffff),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: Colors.black,),
            const SizedBox(width:8),
            Text(text, style: const TextStyle(color: Colors.black,fontSize:16,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
}
