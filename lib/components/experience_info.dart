import 'package:abd_portfolio/models/experience.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'experience_card.dart';
import 'reusable_card.dart';

final List<Experience> experienceList = [
  Experience(
    title: 'Flutter Engineer',
    company: 'Freelance',
    description: [
      'Developed an app for iOS and Android from wireframes using the Provider package.',
      'Integrated Google Maps and Firebase Auth.',
      'Configured push-notifications on either platform.',
      'Set up CI/CD pipeline for an automated build.',
      'Deployed the app on ​Google Play Store​ and ​Apple Appstore​.'
    ],
    year: 'Dec 2020 - Feb 2021',
  ),
  Experience(
    title: 'Student Developer at Dart',
    company: 'Google Summer of Code​',
    description: [
      'Collaborated with the Flutter team at Google and built samples for the ​flutter/samples​ repo on different concepts in Flutter including:\n- Unit, widget, performance, Flutter driver, and state management testing.',
      'Authored a ​codelab​ on different types of testing in Flutter.',
      'Detailed Work Product​.'
    ],
    year: '2018 - Present',
  ),
];

class ExperienceInfo extends StatelessWidget {
  ExperienceInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> experienceCards = List.generate(
    experienceList.length,
    (index) => ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ExperienceCard(
        title: experienceList[index].title,
        company: experienceList[index].company,
        description: experienceList[index].description,
        year: experienceList[index].year,
      ),
    ),
  );

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
              child: const Text(
                'Work Experience',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
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
                children: experienceCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
