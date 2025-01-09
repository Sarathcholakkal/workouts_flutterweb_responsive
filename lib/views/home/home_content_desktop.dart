import 'package:flutter/material.dart';
import 'package:the_basics/views/widgets/call_to_action/call_to_action.dart';
import 'package:the_basics/views/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction(title: "Join Course"),
          ),
        )
      ],
    );
  }
}
