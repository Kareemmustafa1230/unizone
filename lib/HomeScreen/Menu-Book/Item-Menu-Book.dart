import 'package:flutter/material.dart';

import 'details-Item-Menu-Book.dart';

class BookItem {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String professorName;
  final double rating;

  BookItem({required this.title, required this.subTitle, required this.imageUrl, required this.professorName, required this.rating,});
}

class ItemMenuBook extends StatelessWidget {
  const ItemMenuBook({super.key});

  @override
  Widget build(BuildContext context) {
    BookItem bookItem = BookItem(
      title: 'Computer Vision',
      subTitle: 'FCAI, Beni Suef University.',
      imageUrl: 'assets/images/Rectangle 34625178.png',
      professorName: 'Dr.Hany El Nashar',
      rating: 4.8,
    );

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          DetailsItemMenuBook.routeName,
          arguments: bookItem,
        );
      },
      child: Container(
        width: 183,
        height: 300,
        decoration: BoxDecoration(
          color: const Color(0xFFF7F7F7),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 3,
              offset: const Offset(3, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 183,
              height: 108,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(bookItem.imageUrl, fit: BoxFit.cover,),
            ), Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  Text(bookItem.title, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: Color(0xFF000000),),),
                  const SizedBox(height: 5),
                  Text(bookItem.subTitle, style: const TextStyle(color: Color(0xFF95989A), fontSize: 10, fontWeight: FontWeight.w600,),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD9D9D9),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  const SizedBox(width: 4,),
                  Text(bookItem.professorName, style: const TextStyle(color: Color(0xFF95989A), fontSize: 10, fontWeight: FontWeight.w600,),),
                  const SizedBox(width: 26),
                  Text(bookItem.rating.toString(), style: const TextStyle(color: Color(0xFF95989A), fontSize: 13, fontWeight: FontWeight.w900,),),
                  const SizedBox(width: 3),
                  const Icon(Icons.star, color: Color(0xFFFF9900), size: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}