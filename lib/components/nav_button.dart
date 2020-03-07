import 'package:abd_portfolio/constants.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final text;
  final onPressed;
  final Color color;

  const NavButton(
      {Key key,
      @required this.text,
      @required this.onPressed,
      this.color = kButtonOutlineColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: RawMaterialButton(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
          ),
          textAlign: TextAlign.center,
        ),
        // borderSide: BorderSide(
        //   color: color,
        //   width: 4.5,
        // ),
        onPressed: onPressed,
        // highlightedBorderColor: color,
      ),
    );
  }
}
