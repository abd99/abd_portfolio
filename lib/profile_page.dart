import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'components/education_info.dart';
import 'components/nav_button.dart';
import 'components/nav_header.dart';
import 'components/profile_info.dart';
import 'components/skills_info.dart';

class ProfilePage extends StatelessWidget {
  List<Widget> navButtons() => [
        NavButton(
          text: "About",
          onPressed: () {},
        ),
        NavButton(
          text: "Education",
          onPressed: () {},
        ),
        NavButton(
          text: "Skills",
          onPressed: () {},
        ),
        NavButton(
          text: "Projects",
          onPressed: () {},
        ),
        NavButton(
          text: "Contact",
          onPressed: () {},
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Scaffold(
        appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
                elevation: 0.0,
              )
            : null,
        drawer: ResponsiveWidget.isSmallScreen(context)
            ? Drawer(
                child: ListView(
                  padding: EdgeInsets.all(16.0),
                  children: navButtons(),
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: AnimatedPadding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
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
                                navButtons: navButtons(),
                              ),
                              SizedBox(
                                height:
                                    MediaQuery.of(context).size.height * 0.025,
                              ),
                            ],
                          )
                        : null,
                  ),
                  ProfileInfo(),
                  EducationInfo(),
                  SkillsInfo(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
