import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../components/reusable_card.dart';
import '../../responsive_widget.dart';

class SkillCategoryCard extends StatelessWidget {
  const SkillCategoryCard({
    Key? key,
    required this.categoryTitle,
    required this.cardsList,
  }) : super(key: key);

  final List<Widget> cardsList;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);

    return AnimatedPadding(
      curve: Curves.linear,
      duration: Duration(seconds: 1),
      padding: EdgeInsets.symmetric(
          horizontal: isSmallScreen ? width * 0.025 : width * 0.05),
      child: ReusableCard(
        customColor: kActiveCardColor,
        cardChild: Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.025),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(height * 0.025),
                  child: Text(
                    categoryTitle,
                    style: kSecondaryTitleTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                  children: cardsList,
                ),
              ],
            )),
      ),
    );
  }
}
