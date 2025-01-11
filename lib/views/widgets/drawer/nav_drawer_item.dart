import 'package:flutter/material.dart';
import 'package:the_basics/locator/route/route_name.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar_item.dart';

class NavDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const NavDrawerItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(title: "Episodes", navigationPath: episodesRoute),
          SizedBox(width: 30),
          NavBarItem(title: "About", navigationPath: aboutRoute),
          // SizedBox(width: 30),
          // NavBarItem(title: "Home", navigationPath: homeRoute),
        ],
      ),
    );
  }
}
