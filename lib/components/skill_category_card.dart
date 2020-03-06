import 'package:flutter/material.dart';

import '../constants.dart';
import 'reusable_card.dart';

class SkillCategoryCard extends StatelessWidget {
  const SkillCategoryCard({
    Key key,
    @required this.categoryTitle,
    @required this.cardsList,
  }) : super(key: key);

  final List<Widget> cardsList;
  final String categoryTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: ReusableCard(
        customColor: kActiveCardColor,
        cardChild: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.025),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.height * 0.025),
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
