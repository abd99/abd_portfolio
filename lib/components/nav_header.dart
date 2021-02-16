import 'package:abd_portfolio/profile_image_visibility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Stack(
        children: <Widget>[
          Visibility(
            visible:
                !Provider.of<ProfileImageVisibility>(context).isImageVisible,
            maintainAnimation: true,
            maintainState: true,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Image.asset(
                    'images/abd_profile.jpeg',
                    width: 50.0,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              alignment: Alignment.centerRight,
              child: (!ResponsiveWidget.isSmallScreen(context))
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: navButtons,
                    )
                  : null,
            ),
          )
        ],
      ),
    );
  }
}
