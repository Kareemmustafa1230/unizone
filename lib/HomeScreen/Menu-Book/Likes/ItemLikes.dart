import 'package:flutter/material.dart';

class ItemLikes extends StatelessWidget {
  const ItemLikes({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset('assets/images/Ellipse 1821.png', fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dr. Ahmed El Nagar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF000000),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '@kareem10',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF95989A),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 100),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xFF00A0DC),
                    borderRadius: BorderRadius.all(Radius.circular(13)),
                  ),
                  child: const Text(
                    'Follow',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
