import '../data/experience_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'experience_card.dart';
import '../../components/reusable_card.dart';

class ExperienceInfo extends StatelessWidget {
  ExperienceInfo({
    Key key,
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
