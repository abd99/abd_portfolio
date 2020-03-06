import 'package:abd_portfolio/constants.dart';
import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'components/education_info.dart';
import 'components/nav_button.dart';
import 'components/nav_header.dart';
import 'components/profile_info.dart';
import 'components/projects_info.dart';
import 'components/skills_info.dart';
import 'components/training_info.dart';

class ProfilePage extends StatelessWidget {
  final profileKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final trainingKey = GlobalKey();

  List<Widget> navButtons(@required context) => [
        NavButton(
          text: "About",
          onPressed: () {
            Scrollable.ensureVisible(profileKey.currentContext);
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
        NavButton(
          text: "Education",
          onPressed: () {
            Scrollable.ensureVisible(educationKey.currentContext);
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
        NavButton(
          text: "Skills",
          onPressed: () {
            Scrollable.ensureVisible(skillsKey.currentContext);
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
        NavButton(
          text: "Projects",
          onPressed: () {
            Scrollable.ensureVisible(projectsKey.currentContext);
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
        NavButton(
          text: "Trainings and Certifications",
          onPressed: () {
            Scrollable.ensureVisible(trainingKey.currentContext);
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
        NavButton(
          text: "Contact",
          onPressed: () {
            if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
          },
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  'Abdullah Deshmukh - Mobile Developer',
                  style: kLabelTextStyle.copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: Container(
                  color: kInactiveCardColor,
                  child: ListView(
                    padding: EdgeInsets.all(16.0),
                    children: navButtons(context),
                  ),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height *
                ((ResponsiveWidget.isLargeScreen(context)) ? 0.025 : 0.00)),
            duration: Duration(seconds: 1),
            child: ResponsiveWidget(
              largeScreen: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: ResponsiveWidget.isLargeScreen(context)
                        ? Column(
                            children: <Widget>[
                              NavHeader(
                                navButtons: navButtons(context),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                            ],
                          )
                        : null,
                  ),
                  ProfileInfo(
                    key: profileKey,
                  ),
                  EducationInfo(
                    key: educationKey,
                  ),
                  SkillsInfo(
                    key: skillsKey,
                  ),
                  ProjectsInfo(
                    key: projectsKey,
                  ),
                  TrainingInfo(
                    key: trainingKey,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
