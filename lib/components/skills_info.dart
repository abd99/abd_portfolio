import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';
import 'reusable_card.dart';
import 'skill_card.dart';
import 'skill_category_card.dart';

class SkillsInfo extends StatelessWidget {
  final List<Widget> languageSkillCards = [
    SkillCard(
      label: 'Java',
      icon: FontAwesomeIcons.java,
    ),
    SkillCard(
      label: 'Kotlin',
      icon: FontAwesomeIcons.code,
    ),
    SkillCard(
      label: 'Dart',
      icon: FontAwesomeIcons.code,
    ),
    SkillCard(
      label: 'JavaScript',
      icon: FontAwesomeIcons.js,
    ),
    SkillCard(
      label: 'C/C++',
      icon: FontAwesomeIcons.code,
    ),
    SkillCard(
      label: 'Python',
      icon: FontAwesomeIcons.python,
    ),
    SkillCard(
      label: 'HTML',
      icon: FontAwesomeIcons.html5,
    ),
    SkillCard(
      label: 'CSS',
      icon: FontAwesomeIcons.css3,
    ),
    SkillCard(
      label: 'XML',
      icon: FontAwesomeIcons.code,
    ),
    SkillCard(
      label: 'SQL',
      icon: FontAwesomeIcons.database,
    ),
  ];

  final List<Widget> technologiesSkillCards = [
    SkillCard(
      label: 'Android',
      icon: FontAwesomeIcons.android,
    ),
    SkillCard(
      label: 'Flutter',
      icon: FontAwesomeIcons.mobile,
    ),
    SkillCard(
      label: 'React Native',
      icon: FontAwesomeIcons.react,
    ),
    SkillCard(
      label: 'Cordova',
      icon: FontAwesomeIcons.mobile,
    ),
    SkillCard(
      label: 'Node.js(Beginner)',
      icon: FontAwesomeIcons.node,
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
            SkillCategoryCard(
              categoryTitle: 'Languages',
              cardsList: languageSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Technologies/Frameworks',
              cardsList: technologiesSkillCards,
            )
          ],
        ),
      ),
    );
  }
}
