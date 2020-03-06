import 'package:flutter/material.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'training_card.dart';

class TrainingInfo extends StatelessWidget {
  TrainingInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> trainingCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Zensar ESD Program',
        organisation: 'Zensar Technologies',
        year: '2018 - Present',
        techStack: 'Core Java, Advanced Java, MySQL, Oracle',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'React Native',
        organisation: 'Learn Code Online',
        year: '2019 - 2020',
        techStack: 'React Native, State Management',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Java and Android',
        organisation: 'Frankel\'s Infotech',
        year: '2017',
        techStack: 'Core Java, Advanced Java, Android',
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: TrainingCard(
        title: 'Apache Cordova',
        organisation: 'ATS Foundation',
        year: '2020',
        techStack: 'Apache Cordova',
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
                'Trainings and Certifications',
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
                children: trainingCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
