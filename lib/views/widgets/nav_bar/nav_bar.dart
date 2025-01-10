import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar_mobile.dart';

import 'package:the_basics/views/widgets/nav_bar/nav_bar_tablet_desktop.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => const NavBarMobile(),
      tablet: (BuildContext context) => const NavBarTabletDesktop(),
      desktop: (BuildContext context) => const NavBarTabletDesktop(),
    );
  }
}
