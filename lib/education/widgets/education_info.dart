import '../data/college_list.dart';
import 'package:flutter/material.dart';

import 'package:abd_portfolio/responsive_widget.dart';

import '../../constants.dart';
import 'education_card.dart';
import '../../components/reusable_card.dart';

class EducationInfo extends StatelessWidget {
  EducationInfo({
    Key? key,
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
              child: Text(
                'Education',
                style: kTitleTextStyle,
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
