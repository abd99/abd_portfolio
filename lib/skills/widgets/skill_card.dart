import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../constants.dart';
import '../../responsive_widget.dart';

class SkillCard extends StatelessWidget {
  final String label;
  final IconData icon;

  const SkillCard({
    @required this.label,
    @required this.icon,
  });

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
          const SizedBox(
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
