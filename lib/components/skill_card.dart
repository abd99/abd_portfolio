import 'package:flutter/material.dart';

import '../constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

class SkillCard extends StatelessWidget {
  final String label;
  final IconData icon;

  SkillCard({@required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      onPress: () {},
      customColor: kActiveCardColor,
      cardChild: IconContent(
        icon: icon,
        label: label,
      ),
    );
  }
}
