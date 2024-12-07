import 'package:flutter/material.dart';
import '../Abbreviation/Navation.dart';

class ConstSplash extends StatelessWidget {
  const ConstSplash({Key? key, required this.color1, required this.color2, required this.page}) : super(key: key);

  final Color color1;
  final Color color2;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 51),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ..._buildDotContainers(),
          const SizedBox(width: 170),
          _buildForwardButton(context),
        ],
      ),
    );
  }

  List<Container> _buildDotContainers() {
    return List.generate(3,
          (index) => Container(
        width: 20,
        height: 6,
        decoration: BoxDecoration(
          color: index == 0 ? const Color(0xFF00A0DC) : index == 1 ? color1 : color2,
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.symmetric(vertical: 2),
      ),
    );
  }

  InkWell _buildForwardButton(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacement(context, SizeTransition3(page)),
      child: Container(
        width: 92,
        height: 92,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 2,
            color: const Color(0xFF00A0DC),
          ),
        ),
        child: Container(
          width: 68,
          height: 68,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xFF00A0DC),
            borderRadius: BorderRadius.circular(60),
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ),
    );
  }
}
