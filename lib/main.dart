import 'package:flutter/material.dart';
import 'package:the_basics/locator/locator.dart';
import 'package:the_basics/locator/navigation_services.dart';
import 'package:the_basics/locator/route/route_name.dart';
import 'package:the_basics/route/route_function.dart';
import 'package:the_basics/views/layout_templates/layout_templates.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Open Sans'),
      ),
      builder: (context, child) => LayoutTemplates(newchild: child!),
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: homeRoute,
    );
  }
}
