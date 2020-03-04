import 'package:flutter/material.dart';

import 'icon_content.dart';

class SkillCard extends StatelessWidget {
  final String label;
  final IconData icon;

  SkillCard({@required this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return IconContent(
      icon: icon,
      label: label,
    );
  }
}
