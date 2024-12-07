// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class ItemShowAddBottom extends StatefulWidget {
  final String defaultText;
  final IconData defaultIcon;
  final String alternateText;
  final IconData alternateIcon;

  const ItemShowAddBottom({Key? key, required this.defaultText, required this.defaultIcon, required this.alternateText, required this.alternateIcon,}) : super(key: key);
  @override
  _ItemShowAddBottomState createState() => _ItemShowAddBottomState();
}
class _ItemShowAddBottomState extends State<ItemShowAddBottom> {
  bool isDefault = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          setState(() {
            isDefault = !isDefault;
          });
        },
        child: Row(
          children: [
            Icon(isDefault ? widget.defaultIcon : widget.alternateIcon, size: 30,),
            const SizedBox(width: 12),
            Text(isDefault ? widget.defaultText : widget.alternateText,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}