import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'skill_card.dart';

class SkillsInfo extends StatelessWidget {
  final List<Widget> skillCards = [
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'Java',
        icon: FontAwesomeIcons.java,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'Kotlin',
        icon: FontAwesomeIcons.code,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'Dart',
        icon: FontAwesomeIcons.code,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'JavaScript',
        icon: FontAwesomeIcons.js,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'C',
        icon: FontAwesomeIcons.code,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'C++',
        icon: FontAwesomeIcons.python,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'HTML',
        icon: FontAwesomeIcons.html5,
      ),
    ),
    ReusableCard(
      customColor: kActiveCardColor,
      cardChild: SkillCard(
        label: 'CSS',
        icon: FontAwesomeIcons.css3,
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
                'Skills',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children: skillCards,
            ),
          ],
        ),
      ),
    );
  }
}
