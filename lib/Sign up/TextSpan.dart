import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MyTextSpan extends StatelessWidget {
  const MyTextSpan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Text.rich(
        TextSpan(
          style: const TextStyle(fontSize: 27),
          children: [
            const TextSpan(
              text: "By checking the box you agree to our",
              style: TextStyle(
                color: Color(0xFF252525),
                fontSize: 10.2,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "Terms",
              style: const TextStyle(
                fontSize: 10.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF00A0DC),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  // Add your onTap logic here
                },
            ),
            const TextSpan(
              text: " and ",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: "Conditions",
              style: const TextStyle(
                fontSize: 10.5,
                fontWeight: FontWeight.w500,
                color: Color(0xFF00A0DC),
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  // Add your onTap logic here
                },
            ),
          ],
        ),
      ),
    );
  }
}
