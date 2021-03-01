import '../data/college_list.dart';
import 'package:flutter/material.dart';

import 'package:abd_portfolio/responsive_widget.dart';

import '../../constants.dart';
import 'education_card.dart';
import '../../components/reusable_card.dart';

class EducationInfo extends StatelessWidget {
  EducationInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> educationCards = List.generate(
    collegeList.length,
    (index) => ReusableCard(
      customColor: kActiveCardColor,
      cardChild: EducationCard(
        college: collegeList[index],
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
              child: Text(
                'Education',
                style: kTitleTextStyle,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.05),
              child: ResponsiveWidget(
                largeScreen: Wrap(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  direction: Axis.horizontal,
                  alignment: WrapAlignment.center,

                  children: educationCards,
                ),
                smallScreen: Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: educationCards,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
