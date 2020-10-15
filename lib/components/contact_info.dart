import 'package:abd_portfolio/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'round_icon_button.dart';

class ContactInfo extends StatelessWidget {
  ContactInfo({
    Key key,
  }) : super(key: key);

  final List<Widget> contactData = [
    RoundIconButton(
      icon: FontAwesomeIcons.github,
      onPressed: () async {
        const url = 'https://github.com/abd99';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.linkedin,
      onPressed: () async {
        const url = 'https://www.linkedin.com/in/abdullahzakir99/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.instagram,
      onPressed: () async {
        const url = 'https://www.instagram.com/abdullahzakir99/';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    RoundIconButton(
      icon: FontAwesomeIcons.twitter,
      onPressed: () async {
        const url = 'https://twitter.com/abdullahzakir99';
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 25.0,
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: contactData,
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Made with ♥ in Flutter.',
            style: kLabelTextStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            'Copyright \u00a9 2020 | Abdullah Deshmukh',
            textAlign: TextAlign.center,
            style: kLabelTextStyle.copyWith(
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
