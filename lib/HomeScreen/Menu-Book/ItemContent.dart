import 'package:flutter/material.dart';

class ItemContent extends StatefulWidget {
  const ItemContent({super.key});
  static const String routeName = 'Item-Content';

  @override
  State<ItemContent> createState() => _ItemContentState();
}

class _ItemContentState extends State<ItemContent> {
  int index = -1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        child: ExpansionPanelList(
          expansionCallback: (int i, bool isOpen) {
            setState(() {
              index = isOpen ? -1 : i;
            });
          },
          animationDuration: const Duration(seconds: 1),
          dividerColor: Colors.transparent,
          elevation: 4,
          children: <ExpansionPanel>[
            ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Lecture 1:',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Intro to Computer vision',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
              canTapOnHeader: true,
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "I love swimming, so I suggested on my parents that we spend the end of the year in a coastal town. All family members agreed to go to a coastal town.\nWe traveled by plane. During the trip we saw beautiful landscapes, mountains, valleys, plains, rivers, seaside. We arrive at the hotel, the hotel is in a quiet and beautiful place, and the hotel rooms overlook the sea directly. The hotel has many kinds of restaurants, offering delicious foods.\nThe hotel also has a swimming pool and a sports center. In the morning we go to the beach. Enjoy the sunshine and swim. We play various water games, such as water skiing or sailing.\nI and my father went fishing, and we had fun. The summer vacation ended, and we returned home happily.",
                      style: TextStyle(
                        color: Color(0xFF95989A),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                ],
              ),
              isExpanded: index == 0,
            ),
          ],
        ),
      ),
    );
  }
}
