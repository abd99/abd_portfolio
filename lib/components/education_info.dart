import 'package:flutter/material.dart';

import 'package:abd_portfolio/responsive_widget.dart';

import '../constants.dart';
import 'reusable_card.dart';

class EducationInfo extends StatelessWidget {
  List<Widget> educationCards = [
    Expanded(
      child: ReusableCard(
        customColor: kActiveCardColor,
        cardChild: EducationCard(
          collegeName: 'Zeal College of Engineering\, Pune',
          universityName: 'Savitribai Phule Pune University',
          year: '2018 - Present',
          courseName: 'BE in Computer Engineering',
        ),
      ),
    ),
    Expanded(
      child: ReusableCard(
        customColor: kActiveCardColor,
        cardChild: EducationCard(
          collegeName: 'MIT Polytechnic\, Pune',
          universityName: 'Maharashtra State Board of Technical Education',
          year: '2015 - 2018',
          courseName: 'Diploma in Computer Engineering',
        ),
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
              largeScreen: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: educationCards,
              ),
              smallScreen: Wrap(
                runAlignment: WrapAlignment.center,
                direction: Axis.vertical,
                children: educationCards,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EducationCard extends StatelessWidget {
  String collegeName;
  String universityName;
  String year;
  String courseName;

  EducationCard({
    Key key,
    this.collegeName,
    this.universityName,
    this.year,
    this.courseName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            collegeName,
            style: kSecondaryTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            universityName,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            courseName,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            year,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
