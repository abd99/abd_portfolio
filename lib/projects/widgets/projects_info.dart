import 'package:abd_portfolio/projects/data/projects_list.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'project_card.dart';
import '../../components/reusable_card.dart';

class ProjectsInfo extends StatelessWidget {
  ProjectsInfo({
    Key key,
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
                'Projects',
                style: kTitleTextStyle,
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
                children: projectCards,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
