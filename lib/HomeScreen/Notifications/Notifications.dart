import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unizone/HomeScreen/Notifications/DetailsNotifications.dart';

class Notifications extends StatelessWidget {
  static const String routeName = 'Notifications';

  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          return const NotifitionItem();
        },
      itemCount: 60,
    );
  }
}
