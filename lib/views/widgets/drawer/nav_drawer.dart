import 'package:flutter/material.dart';
import 'package:the_basics/views/widgets/drawer/nav_drawer_header.dart';
import 'package:the_basics/views/widgets/drawer/nav_drawer_item.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavDrawerHeader(),
          NavDrawerItem(
            title: 'Episodes',
            icon: Icons.videocam,
          ),
          NavDrawerItem(
            title: 'About',
            icon: Icons.help,
          ),
        ],
      ),
    );
  }
}
