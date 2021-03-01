import 'package:abd_portfolio/constants.dart';
import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'components/contact_info.dart';
import 'education/widgets/education_info.dart';
import 'experience/widgets/experience_info.dart';
import 'components/nav_button.dart';
import 'components/nav_header.dart';
import 'components/profile_info.dart';
import 'projects/widgets/projects_info.dart';
import 'skills/widgets/skills_info.dart';

class ProfilePage extends StatelessWidget {
  final profileKey = GlobalKey();
  final experienceKey = GlobalKey();
  final educationKey = GlobalKey();
  final skillsKey = GlobalKey();
  final projectsKey = GlobalKey();
  final contactKey = GlobalKey();
  final scrollController = ScrollController();
  final scrollDuration = Duration(milliseconds: 500);

  void scrollToKey(BuildContext context, GlobalKey key) {
    RenderBox box = key.currentContext.findRenderObject();
    Offset position = box.localToGlobal(Offset.zero);
    var currentOffset = scrollController.offset;
    var destinationOffset = position.dy;

    scrollController.animateTo(destinationOffset + currentOffset - 50.0,
        duration: scrollDuration, curve: Curves.fastLinearToSlowEaseIn);

    if (ResponsiveWidget.isSmallScreen(context)) Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> navButtons(context) => [
          NavButton(
            text: "About",
            onPressed: () {
              scrollToKey(context, profileKey);
            },
          ),
          NavButton(
            text: "Experience",
            onPressed: () {
              scrollToKey(context, experienceKey);
            },
          ),
          NavButton(
            text: "Education",
            onPressed: () {
              scrollToKey(context, educationKey);
            },
          ),
          NavButton(
            text: "Skills",
            onPressed: () {
              scrollToKey(context, skillsKey);
            },
          ),
          NavButton(
            text: "Projects",
            onPressed: () {
              scrollToKey(context, projectsKey);
            },
          ),
          NavButton(
            text: "Contact",
            onPressed: () {
              scrollToKey(context, contactKey);
            },
          ),
        ];

    return Scaffold(
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
      body: AnimatedPadding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height *
            ((!ResponsiveWidget.isSmallScreen(context)) ? 0.025 : 0.00)),
        duration: Duration(seconds: 1),
        child: ResponsiveWidget(
          largeScreen: Column(
            children: [
              Container(
                child: !ResponsiveWidget.isSmallScreen(context)
                    ? Column(
                        children: <Widget>[
                          NavHeader(
                            navButtons: navButtons(context),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.025,
                          ),
                        ],
                      )
                    : null,
              ),
              Expanded(
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      ProfileInfo(
                        key: profileKey,
                      ),
                      ExperienceInfo(
                        key: experienceKey,
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
                      ContactInfo(
                        key: contactKey,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
