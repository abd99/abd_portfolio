import 'package:flutter/material.dart';

import '../responsive_widget.dart';

class NavHeader extends StatelessWidget {
  final List<Widget> navButtons;

  const NavHeader({Key key, this.navButtons}) : super(key: key);

  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Row(
        mainAxisAlignment: ResponsiveWidget.isSmallScreen(context)
            ? MainAxisAlignment.center
            : MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: (!ResponsiveWidget.isSmallScreen(context))
                ? Row(
                    children: navButtons,
                  )
                : null,
          ),
        ],
      ),
    );
  }
}
