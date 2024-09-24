import 'package:abd_portfolio/responsive_widget.dart';

import '../data/experience_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'experience_card.dart';
import '../../components/reusable_card.dart';

class ExperienceInfo extends StatelessWidget {
  ExperienceInfo({
    Key? key,
  }) : super(key: key);

  final List<Widget> experienceCards = List.generate(
    experienceList.length,
    (index) => ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ExperienceCard(
        experience: experienceList[index],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
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
              child: const Text(
                'Work Experience',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: isSmallScreen ? height * 0.025 : height * 0.05,
            ),
            AnimatedPadding(
              curve: Curves.linear,
              duration: Duration(seconds: 1),
              padding: EdgeInsets.symmetric(
                horizontal: isSmallScreen ? width * 0.025 : width * 0.05,
              ),
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
