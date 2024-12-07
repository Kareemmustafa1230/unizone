import 'package:flutter/material.dart';

class Comments extends StatelessWidget {
  const Comments({super.key});
  static const String routeName = 'Comments';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
          iconSize: 30,
        ),
        elevation: 1,
        backgroundColor: Colors.white,
        title: const Text('Comments',
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF000000),
          fontWeight: FontWeight.w400,
        ),
        ),
      ),
    );
  }
}
