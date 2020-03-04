import 'package:flutter/material.dart';

import 'package:abd_portfolio/responsive_widget.dart';

import '../constants.dart';
import 'education_card.dart';
import 'reusable_card.dart';

class EducationInfo extends StatelessWidget {
  final List<Widget> educationCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: EducationCard(
        collegeName: 'Zeal College of Engineering\, Pune',
        universityName: 'Savitribai Phule Pune University',
        year: '2018 - Present',
        courseName: 'BE in Computer Engineering',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: EducationCard(
        collegeName: 'MIT Polytechnic\, Pune',
        universityName: 'Maharashtra State Board of Technical Education',
        year: '2015 - 2018',
        courseName: 'Diploma in Computer Engineering',
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      customColor: kInactiveCardColor,
      cardChild: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.05,
          bottom: MediaQuery.of(context).size.height * 0.05,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Education',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            ResponsiveWidget(
              largeScreen: Wrap(
                // mainAxisAlignment: MainAxisAlignment.center,
                direction: Axis.horizontal,
                alignment: WrapAlignment.center,

                children: educationCards,
              ),
              smallScreen: Wrap(
                alignment: WrapAlignment.center,
                direction: Axis.horizontal,
                children: educationCards,
              ),
            )
          ],
        ),
      ),
    );
  }
}
