import 'package:abd_portfolio/constants.dart';
import 'package:flutter/material.dart';
import '../responsive_widget.dart';
import 'reusable_card.dart';

class ProfileInfo extends StatelessWidget {
  profileImage(context) => Container(
        height: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        width: ResponsiveWidget.isSmallScreen(context)
            ? MediaQuery.of(context).size.height * 0.25
            : MediaQuery.of(context).size.width * 0.25,
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.luminosity,
          color: kButtonColor,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("images/abd_profile.jpeg"),
            alignment: Alignment.center,
            fit: BoxFit.cover,
          ),
        ),
      );

  List<Widget> profileData(context) => [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Text(
          'Abdullah Deshmukh',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 40.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        Text(
          'Mobile Developer',
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            color: Color(0xFF8D8E98),
            fontSize: 20,
            letterSpacing: 3.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 20,
          width: 150,
          child: Divider(
            color: Colors.teal.shade100,
          ),
        ),
        ResponsiveWidget(
          largeScreen: Container(
            width: MediaQuery.of(context).size.width * 0.55,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                kAboutText,
                style: kBodyTextStyle,
              ),
            ),
          ),
          smallScreen: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                kAboutText,
                style: kBodyTextStyle,
              ),
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReusableCard(
            customColor: kInactiveCardColor,
            cardChild: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    top: 100.0,
                    bottom: 100.0,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                      profileImage(context),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.025,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: profileData(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      smallScreen: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          ReusableCard(
            customColor: kInactiveCardColor,
            cardChild: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                profileImage(context),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: profileData(context),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.025,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
