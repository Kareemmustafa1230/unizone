import 'package:flutter/material.dart';

class ItemRecent extends StatelessWidget {
  const ItemRecent({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 56,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16,),
            child: Row(
              children: [
                Icon(Icons.history,size: 30,color: Colors.grey),
                SizedBox(width: 32,),
                Text('Flutter development',
                style: TextStyle(
                  color: Color(0xDE000000),
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
