import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../Menu-Book/Item-Discussion.dart';

class Home extends StatelessWidget {
  static const String routeName = 'Home';
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 1821@3x.png'),
                radius: 23,
              ),
             const SizedBox(width: 6),
             Container(
               padding: const EdgeInsets.only(top:10,left: 15),
               width: 280,
               height: 40,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(30),
                 border: const BorderDirectional(top: BorderSide(color: Color(0xFF777777),width: 1),bottom:BorderSide(color:Color(0xFF777777),width: 1),end: BorderSide(color:Color(0xFF777777),width: 1),
                 start: BorderSide(color: Color(0xFF777777),width: 1),),),
               child: AnimatedTextKit(
                 animatedTexts: [
                   TypewriterAnimatedText('What do you want to talk about?',
                     speed: const Duration(milliseconds: 150),
                     textStyle: const TextStyle(
                       color: Color(0xFF95989A),
                       fontSize: 15,
                       fontWeight: FontWeight.w400,
                     ),
                   ),
                 ],
                 isRepeatingAnimation: true,
                 repeatForever: true,
                 displayFullTextOnTap: true,
                 stopPauseOnTap: false,
               ),
             ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text('ZONE',
                 style: TextStyle(
                   fontWeight: FontWeight.w600,
                   fontSize: 14,
                   color: Color(0xFF95989A)
                 ),
                  ),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.arrow_drop_down,size: 35,))
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return const ItemDiscussion();
            },
            itemCount: 50,
          ),
        ),      ],
    );
  }
}
