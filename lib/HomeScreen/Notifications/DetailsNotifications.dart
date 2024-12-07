import 'package:flutter/material.dart';

class NotifitionItem extends StatefulWidget {
  const NotifitionItem({Key? key}) : super(key: key);

  @override
  State<NotifitionItem> createState() => _NotifitionItemState();
}

class _NotifitionItemState extends State<NotifitionItem> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: () {},
      child: Container(
        color: const Color(0xFFE6F6FC),
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/Ellipse 1821@3x.png',
              height: screenHeight * 0.1,
              width: screenWidth * 0.2,
              fit: BoxFit.fill,
            ),
            SizedBox(width: screenWidth * 0.02),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ahmed Ashy commented on your post\n " هذا منشور تجريبي لاختبار المساحات والش ..."',
                    style: TextStyle(
                      fontSize: screenWidth * 0.03,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Text(
                    '2 hours ago',
                    style: TextStyle(
                      color: const Color(0xFF95989A),
                      fontSize: screenWidth * 0.02,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: screenWidth * 0.04),
            Icon(Icons.more_vert, size: screenWidth * 0.05, color: const Color(0xFF95989A)),
          ],
        ),
      ),
    );
  }
}
