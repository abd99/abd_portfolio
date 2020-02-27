import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';

import 'components/navbutton.dart';

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
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
            duration: Duration(seconds: 1),
            child: ResponsiveWidget(largeScreen: Column()),
          ),
        ),
      ),
    );
  }
}
