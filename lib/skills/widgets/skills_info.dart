import 'package:abd_portfolio/skills/data/skills.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../components/reusable_card.dart';
import '../../responsive_widget.dart';
import 'skill_card.dart';
import 'skill_category_card.dart';

class SkillsInfo extends StatelessWidget {
  SkillsInfo({
    Key? key,
  }) : super(key: key);

  final List<SkillCard> languageSkillCards = languagesMap.entries
      .map((entry) => SkillCard(
            label: entry.key,
            icon: entry.value,
          ))
      .toList();

  final List<SkillCard> technologiesSkillCards = technologiesMap.entries
      .map((entry) => SkillCard(
            label: entry.key,
            icon: entry.value,
          ))
      .toList();

  final List<SkillCard> dbSkillCards = dbMap.entries
      .map((entry) => SkillCard(label: entry.key, icon: entry.value))
      .toList();

  final List<Widget> toolsSkillCards = toolsMap.entries
      .map((entry) => SkillCard(label: entry.key, icon: entry.value))
      .toList();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return ReusableCard(
      customColor: kInactiveCardColor,
      cardChild: AnimatedPadding(
        curve: Curves.linear,
        duration: Duration(seconds: 1),
        padding: EdgeInsets.only(
          top: isSmallScreen ? height * 0.025 : height * 0.05,
          bottom: isSmallScreen ? height * 0.025 : height * 0.05,
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
              height: isSmallScreen ? height * 0.025 : height * 0.05,
            ),
            SkillCategoryCard(
              categoryTitle: 'Languages',
              cardsList: languageSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Technologies/Frameworks',
              cardsList: technologiesSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Databases',
              cardsList: dbSkillCards,
            ),
            SkillCategoryCard(
              categoryTitle: 'Tools',
              cardsList: toolsSkillCards,
            ),
          ],
        ),
      ),
    );
  }
}
