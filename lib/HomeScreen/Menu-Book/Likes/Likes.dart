import 'package:flutter/material.dart';
import 'package:unizone/HomeScreen/Menu-Book/Likes/ItemLikes.dart';

class Likes extends StatelessWidget {
  const Likes({super.key});
  static const String routeName = 'Likes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
          iconSize: 30,
        ),
        backgroundColor: Colors.white,
        title: const Text('People who liked',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Color(0xFF000000),
        ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return const ItemLikes();
            },
              itemCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
