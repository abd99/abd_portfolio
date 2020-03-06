import 'package:flutter/material.dart';

import '../constants.dart';
import 'project_card.dart';
import 'reusable_card.dart';

class ProjectsInfo extends StatelessWidget {
  ProjectsInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> projectCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'MSBTE Study Guide',
        subTitle: 'Study Resource App',
        projectDescription:
            'Provides study resources for G-Scheme MSBTE Students such as: \n- Cirriculum\n- Questions Papers\n- Solved Modal Answer Papers .\n\n- More than 10K downloads on Google Play Store',
        year: '2017 - 2019',
        techStack: 'Native Android(Java), Firebase Cloud Storage',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'Med-Dose',
        subTitle: ' Medicine Dosage Reminder',
        projectDescription:
            'The app:\n- Reminds the user to take medicine based upon the set daily dosage times.\n- Rings an optional alarm on the dosage time\n- Keeps a track of the user\'s dosage',
        year: '2018 - Present',
        techStack: 'Native Android(Java), SQLite',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        projectTitle: 'MyKAAR',
        subTitle: 'IoT based Car Immobilizer System',
        projectDescription:
            'A system that provides the user to control immolizing features for his/her car such as cut-off the ignition, locate the car, etc. using an app.',
        year: '2017 - 2018',
        techStack: 'Native Android(Java), Arduino, Java Servlet',
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
                'Projects',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: projectCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
