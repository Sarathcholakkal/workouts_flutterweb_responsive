import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/locator/locator.dart';
import 'package:the_basics/locator/navigation_services.dart';
import 'package:the_basics/locator/route/route_name.dart';
import 'package:the_basics/route/route_function.dart';

import 'package:the_basics/views/widgets/centered_view/centered_view.dart';
import 'package:the_basics/views/widgets/drawer/nav_drawer.dart';
import 'package:the_basics/views/widgets/nav_bar/nav_bar.dart';

class LayoutTemplates extends StatefulWidget {
  const LayoutTemplates({super.key});

  @override
  State<LayoutTemplates> createState() => _LayoutTemplatesState();
}

class _LayoutTemplatesState extends State<LayoutTemplates> {
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
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
