import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:the_basics/views/widgets/call_to_action/call_to_action_desktoptablet.dart';
import 'package:the_basics/views/widgets/call_to_action/call_to_action_mobile.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => CallToActionMobile(
        title: title,
      ),
      tablet: (BuildContext context) => CallToActionTabletDesktop(
        title: title,
      ),
      desktop: (BuildContext context) => CallToActionTabletDesktop(
        title: title,
      ),
    );
  }
}
