import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unizone/HomeScreen/Home/ItemShowAddBottom2.dart';
import 'ItemShowAddBottom.dart';

class ShowAddTaskBottom extends StatelessWidget {
  static const String routeName = 'Show-Add-Task-Bottom';
  const ShowAddTaskBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFE6F6FC),
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15),
        ),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8,),
            Container(
              width: 70,
              height: 6.5,
              decoration: BoxDecoration(
                  color: Color(0xFFD9D9D9),
                  borderRadius: BorderRadius.circular(10)
              ),
            ),
          const SizedBox(height: 12,),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top:11,left: 13 ),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20),
              ),
            ),
              child: const Column(
                children: [
                  ItemShowAddBottom(defaultText: 'Notifications Off', defaultIcon: FontAwesomeIcons.bellSlash, alternateText: 'Notifications On', alternateIcon: FontAwesomeIcons.bell),
                  ItemShowAddBottom(defaultText: 'Comments Off', defaultIcon: CommunityMaterialIcons.comment_remove_outline, alternateText: 'Comments On', alternateIcon: CommunityMaterialIcons.comment_processing_outline),
                  ItemShowAddBottom2(texts: 'Edit', icon:FontAwesomeIcons.penToSquare),
                  ItemShowAddBottom2(texts: 'Delete', icon: FontAwesomeIcons.trashAlt),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

