import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:unizone/HomeScreen/Menu/ColumnItem.dart';

import 'RowItem.dart';

class Menu extends StatelessWidget {
  static const String routeName = 'Menu';
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 5,right: 5,top:5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Ellipse 1821@3x.png'),
                    radius: 25.5,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'kareem mustafa',
                    style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6.5),
             const RowItem(text1: 'Student Jobs', icon1: CommunityMaterialIcons.briefcase_variant_outline, text2: 'Saved', icon2:CommunityMaterialIcons.bookmark_minus_outline,),
             const SizedBox(height: 5),
             const RowItem(text1: 'People', icon1:Icons.people_outline, text2: 'Courses', icon2:  Icons.menu_book_outlined),
            const SizedBox(height: 5),
            const RowItem(text1: 'Tasks', icon1: FontAwesomeIcons.listCheck, text2: 'Cart', icon2: Icons.shopping_cart_outlined),
            const SizedBox(height: 6.5,),
             const ColumnItem(texts: 'Setting & Privacy', color:Color(0xFFEFF7F9), icon:Icons.settings,),
            const RowItem(text1: 'change Password', icon1: CommunityMaterialIcons.lock_outline, text2: 'Profile info', icon2:CommunityMaterialIcons.file_question_outline),
            const SizedBox(height: 5),
            const RowItem(text1: 'Account', icon1:Icons.person_outline_outlined, text2: 'Language', icon2:  Icons.language),
            const SizedBox(height: 5),
            const RowItem(text1: 'Dark mode', icon1: FontAwesomeIcons.solidMoon, text2: 'Report', icon2: Icons.warning_amber_rounded),
            const SizedBox(height: 6.5,),
            const ColumnItem(texts: 'Help & Support', color:Color(0xFFFFFFFF), icon: FontAwesomeIcons.circleQuestion,),
            const SizedBox(height: 5),
            const ColumnItem(texts: 'About Us', color:Color(0xFFFFFFFF), icon: FontAwesomeIcons.circleUser,),
            const SizedBox(height: 5),
            const ColumnItem(texts: 'Log Out', color:Color(0xFFFFFFFF), icon: CommunityMaterialIcons.logout,),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
//moon
//CommunityMaterialIcons