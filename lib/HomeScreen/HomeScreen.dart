import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Home/Home.dart';
import 'Menu-Book/Menu-Book.dart';
import 'Menu/menu.dart';
import 'Notifications/Notifications.dart';
import 'Search/Search.dart';
import 'Task-Alt/Task-Alt.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home-Screen';
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0 ;
  List<NavItem> navItems = [
    NavItem(icon: Icons.home_rounded, size: 35, unselectedSize: 30, color: Colors.grey),
    NavItem(icon: Icons.menu_book_rounded, size: 35, unselectedSize: 30, color: Colors.grey),
    NavItem(icon: Icons.task_alt_outlined, size: 35, unselectedSize: 30, color: Colors.grey),
    NavItem(icon: Icons.notifications_none, size: 35, unselectedSize: 30, color: Colors.grey),
    NavItem(icon: Icons.menu, size: 35, unselectedSize: 30, color: Colors.grey),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        elevation: 4,
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 23),
          child: ImageIcon(
            AssetImage('assets/images/message-text-01.png'),
            color: Color(0xFF95989A),
            size: 25,
          ),
        ),
        title: const Text('unizone',
          style: TextStyle(
            fontSize: 24,
            color: Color(0xFF00A0DC),
            fontWeight: FontWeight.w400,
            fontFamily: 'font1',
          ),
        ),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: InkWell(
              onTap: (){
                 Navigator.of(context).pushNamed(Search.routeName);
              },
              child: const ImageIcon(
                AssetImage('assets/images/search-02.png'),
                color: Color(0xFF95989A),
                size: 25,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 600),
        index: _page,
        buttonBackgroundColor: const Color(0xFF00A0DC),
        color: CupertinoColors.extraLightBackgroundGray,
        height: 75,
        animationCurve: Curves.linearToEaseOut,
        backgroundColor: CupertinoColors.tertiarySystemBackground,
        items: navItems
            .map((item) => Icon(
          item.icon,
          size: _page == navItems.indexOf(item) ? item.size : item.unselectedSize,
          color: _page == navItems.indexOf(item) ? Colors.white : item.color,
        ))
            .toList(),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body:taps[_page] ,
    );
  }
  List<Widget> taps = [
    const Home() , const MenuBook(), const TaskAlt(),const Notifications(),const Menu(),
  ];
}
class NavItem {
  final IconData icon;
  final double size;
  final double unselectedSize;
  final Color color;
  NavItem({required this.icon, required this.size, required this.unselectedSize, required this.color});
}
