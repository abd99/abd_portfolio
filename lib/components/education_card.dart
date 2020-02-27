import 'package:flutter/material.dart';

import '../constants.dart';

class EducationCard extends StatelessWidget {
  final String collegeName;
  final String universityName;
  final String year;
  final String courseName;

  EducationCard({
    this.collegeName,
    this.universityName,
    this.year,
    this.courseName,
  });

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
