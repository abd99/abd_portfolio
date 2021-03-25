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
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: isSmallScreen ? 105.0 : 125.0,
        width: isSmallScreen ? 105.0 : null,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
