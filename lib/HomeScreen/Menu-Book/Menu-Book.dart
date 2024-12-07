import 'package:flutter/material.dart';

import 'Item-Menu-Book.dart';

class MenuBook extends StatefulWidget {
  static const String routeName = 'Menu-Book';

  const MenuBook({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MenuBookState createState() => _MenuBookState();
}

class _MenuBookState extends State<MenuBook> {
  late int _currentIndex;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 40,
              width: 374,
              decoration: const BoxDecoration(
                color: Color(0xFFE6F6FC),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _changeTab(0);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _currentIndex == 0 ? const Color(0xFF00A0DC) : const Color(0xFFE6F6FC),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text('Learner',
                            style: TextStyle(
                              fontFamily: 'font1',
                              color: _currentIndex == 0 ? Colors.white : const Color(0xFF95989A),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        _changeTab(1);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: _currentIndex == 1 ? const Color(0xFF00A0DC) : const Color(0xFFE6F6FC),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Center(
                          child: Text('Mentor',
                            style: TextStyle(
                              color: _currentIndex == 1 ? Colors.white : const Color(0xFF95989A),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'font1',
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 18, left: 12),
                  child: CustomScrollView(
                    controller: _scrollController,
                    slivers: [
                      SliverGrid(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 0,
                          mainAxisSpacing: 10,
                        ),
                        delegate: SliverChildBuilderDelegate(
                              (context, index) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 12),
                              child: ItemMenuBook(),
                            );
                          },
                          childCount: 50,
                        ),
                      ),
                    ],
                  ),
                ),
                const Center(
                  child: Text('Content of Tab 2'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _scrollController.jumpTo(0);
    });
  }
}
