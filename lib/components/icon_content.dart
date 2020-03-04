import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;

  IconContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FaIcon(
            icon,
            size: ResponsiveWidget.isLargeScreen(context) ? 80.0 : 60.0,
          ),
          SizedBox(
            height: 16.0,
          ),
          Text(
            label,
            style: kLabelTextStyle,
          )
        ],
      ),
    );
  }
}
