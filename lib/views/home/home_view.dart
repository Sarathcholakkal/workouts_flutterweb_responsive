import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/home/home_content_desktop.dart';
import 'package:the_basics/views/home/home_content_mobile.dart';
import 'package:the_basics/views/widgets/centered_view/centered_view.dart';
import 'package:the_basics/views/widgets/drawer/nav_drawer.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, // Ensure proper alignment
            children: <Widget>[
              NavBar(), // Adding const for better performance
              Expanded(
                child: ScreenTypeLayout.builder(
                  mobile: (BuildContext context) => const HomeContentMobile(),
                  desktop: (BuildContext context) => const HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
