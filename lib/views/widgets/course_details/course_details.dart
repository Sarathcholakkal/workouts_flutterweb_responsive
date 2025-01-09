import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;
        late double titleSize;
        late double descriptionSize;
        late SizedBox spaceBox;

        if (sizingInformation.deviceScreenType == DeviceScreenType.mobile) {
          titleSize = 50.0;
          descriptionSize = 16.0;
          spaceBox = SizedBox(
            height: 40,
          );
        } else if (sizingInformation.deviceScreenType ==
            DeviceScreenType.tablet) {
          titleSize = 65.0;
          descriptionSize = 18.0;
          spaceBox = SizedBox(
            height: 30,
          );
        } else {
          // For desktop
          titleSize = 80.0;
          descriptionSize = 21.0;
          spaceBox = SizedBox(
            height: 10,
          );
        }

        return Container(
          width: 600,
          padding:
              const EdgeInsets.all(16.0), // Added padding for better layout
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'FLUTTER WEB.\nTHE BASICS',
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
              spaceBox,
              Text(
                'In this course, we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals, and more.',
                style: TextStyle(
                  fontSize: descriptionSize,
                  height: 1.7,
                ),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
