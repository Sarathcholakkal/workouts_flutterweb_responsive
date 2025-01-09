import 'package:flutter/material.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar_item.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(title: "Episodes"),
              SizedBox(
                width: 60,
              ),
              NavBarItem(title: "about"),
            ],
          )
        ],
      ),
    );
  }
}
