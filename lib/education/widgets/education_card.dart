import 'package:abd_portfolio/education/models/college.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class EducationCard extends StatelessWidget {
  final College college;

  const EducationCard({
    @required this.college,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            college.collegeName,
            style: kSecondaryTitleTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.universityName,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.courseName,
            style: kBodyTextStyle,
            textAlign: TextAlign.center,
          ),
          Text(
            college.year,
            style: kLabelTextStyle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
