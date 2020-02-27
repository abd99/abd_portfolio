import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color customColor;
  final Widget cardChild;
  final Function onPress;

  ReusableCard({@required this.customColor, this.cardChild, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: customColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
