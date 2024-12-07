import 'package:flutter/material.dart';
import 'Item-Discussion.dart';
import 'Item-Menu-Book.dart';
import 'ItemContent.dart';

class DetailsItemMenuBook extends StatefulWidget {
  static const String routeName = 'Details-Item-Menu-Book';

  const DetailsItemMenuBook({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DetailsItemMenuBookState createState() => _DetailsItemMenuBookState();
}

class _DetailsItemMenuBookState extends State<DetailsItemMenuBook> {
  late int _currentIndex;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _currentIndex = 0;
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final BookItem bookItem = ModalRoute.of(context)!.settings.arguments as BookItem;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          bookItem.title,
          style: const TextStyle(
            color: Color(0xFF000000),
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
        leading: IconButton(
          onPressed: () {Navigator.of(context).pop();},
          icon: const Icon(Icons.arrow_back_outlined),
          color: Colors.black,
          iconSize: 30,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_horiz),
              color: Colors.grey,
              iconSize: 40,
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildHeaderImage(bookItem.imageUrl),
          _buildTabsRow(),
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: _changeTab,
              children: [
                _buildTabContent(const ItemContent()),
                _buildTabContent(const Center(child: Text('Content of Tab 2'))),
                _buildTabContent(const ItemDiscussion()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeaderImage(String imageUrl) {
    return SizedBox(
      width: double.infinity,
      height: 140,
      child: Image.asset(imageUrl, fit: BoxFit.cover),
    );
  }

  Widget _buildTabsRow() {
    return Container(
      height: 40,
      width: 374,
      color: const Color(0xFFE6F6FC),
      child: Row(
        children: [
          _buildTabItem(0, 'Learner'),
          _buildTabItem(1, 'Mentor'),
          _buildTabItem(2, 'Another Tab'),
        ],
      ),
    );
  }

  Widget _buildTabItem(int index, String title) {
    return Expanded(
      child: InkWell(
        onTap: () => _changeTab(index),
        child: Container(
          color: _currentIndex == index ? const Color(0xFF00A0DC) : const Color(0xFFE6F6FC),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontFamily: 'font1',
                color: _currentIndex == index ? Colors.white : const Color(0xFF95989A),
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTabContent(Widget content) {
    return ListView.builder(
      itemBuilder: (context, index) => content,
      itemCount: 50,
    );
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 2000),
      curve: Curves.easeInOut,
    );
  }
}
