import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
 String images ;
 String text1 ;
 String text2 ;
 Splash({super.key, required this.images,required this.text1 , required this.text2});

 @override
  Widget build(BuildContext context) {
    return
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top:72),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 78, right: 79),
                    child: Text('unizone',
                      style: TextStyle(
                        fontSize: 48,
                        color: Color(0xFF00A0DC),
                        fontWeight: FontWeight.w400,
                        fontFamily: 'font1',
                      ),
                    ),
                  ),
                  const SizedBox(height: 51,),
                  Image.asset(images),
                  const SizedBox(height: 14,),
                  Padding(
                    padding: const EdgeInsets.only(left:59),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(text1,
                          style: const TextStyle(
                            color:Color(0xFF263238) ,
                            fontSize:28,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                        Text(text2,
                          style: const TextStyle(
                            color:Color(0xFF263238) ,
                            fontSize:28,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
