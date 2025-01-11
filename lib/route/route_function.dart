import 'package:flutter/material.dart';
import 'package:the_basics/locator/route/route_name.dart';
import 'package:the_basics/views/episode_view.dart';
import 'package:the_basics/views/about_view.dart';
import 'package:the_basics/views/home/home_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  // print('generateRoute: ${settings.name}');

  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(HomeView());
    case episodesRoute:
      return _getPageRoute(EpisodesView());
    case aboutRoute:
      return _getPageRoute(AboutView());
    default:
      return _getPageRoute(HomeView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(
    builder: (context) => child,
  );
}
