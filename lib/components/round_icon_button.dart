import 'package:abd_portfolio/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/fa_icon.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final Function onPressed;

  RoundIconButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: FaIcon(
        icon,
        size: MediaQuery.of(context).size.width *
            (ResponsiveWidget.isLargeScreen(context) ? 0.025 : 0.05),
      ),
      elevation: 4.0,
      constraints: BoxConstraints.tightFor(
        width: MediaQuery.of(context).size.width *
            (ResponsiveWidget.isLargeScreen(context) ? 0.05 : 0.1),
        height: MediaQuery.of(context).size.width *
            (ResponsiveWidget.isLargeScreen(context) ? 0.05 : 0.1),
      ),
      shape: CircleBorder(),
      onPressed: onPressed,
    );
  }
}
