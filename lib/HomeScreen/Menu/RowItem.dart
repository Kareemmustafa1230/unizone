import 'package:flutter/material.dart';
import 'ItemMenu.dart';

class RowItem extends StatelessWidget{
  final String text1;
  final String text2;
  final IconData icon1;
  final IconData icon2;
  const RowItem({Key? key, required this.text1, required this.icon1,required this.text2, required this.icon2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ItemMenu(text: text1, icon: icon1),
        const SizedBox(width:5.3),
        ItemMenu(text: text2, icon: icon2),
      ],
    );
  }
}
