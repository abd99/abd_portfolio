import 'package:abd_portfolio/projects/data/projects_list.dart';
import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_card.dart';
import '../../components/reusable_card.dart';

class ProjectsInfo extends StatelessWidget {
  ProjectsInfo({
    Key? key,
  }) : super(key: key);

  final projectCards = List.generate(
    projectsList.length,
    (index) => ReusableCard(
      customColor: kActiveCardColor,
      cardChild: ProjectCard(
        project: projectsList[index],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
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
                'Projects',
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
                  horizontal: isSmallScreen ? width * 0.025 : width * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: projectCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
