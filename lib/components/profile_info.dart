import 'package:abd_portfolio/constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:visibility_detector/visibility_detector.dart';

import '../profile_image_visibility.dart';
import '../responsive_widget.dart';
import 'reusable_card.dart';

class ProfileInfo extends StatelessWidget {
  ProfileInfo({
    Key? key,
  }) : super(key: key);

  profileImage(context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    var isSmallScreen = ResponsiveWidget.isSmallScreen(context);
    return VisibilityDetector(
      onVisibilityChanged: (info) {
        debugPrint("${info.visibleFraction} of my widget is visible");
        var imageVisibility =
            Provider.of<ProfileImageVisibility>(context, listen: false);
        if (info.visibleFraction <= 0) {
          imageVisibility.setVisibilityFalse();
        } else {
          imageVisibility.setVisibilityTrue();
        }
      },
      key: Key("ImageVisibilityKey"),
      child: Container(
        height: isSmallScreen ? height * 0.25 : width * 0.25,
        width: isSmallScreen ? height * 0.25 : width * 0.25,
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
      ),
    );
  }

  List<Widget> profileData(context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    return [
      SizedBox(
        height: size.height * 0.05,
      ),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.0),
        child: Text(
          'Abdullah Deshmukh',
          style: TextStyle(
            letterSpacing: 2.0,
            fontSize: 40.0,
            color: Colors.white,
            fontFamily: 'GoogleSansMedium',
          ),
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ),
      Text(
        'Mobile Engineer',
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
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      Container(
        width: ResponsiveWidget.isSmallScreen(context)
            ? width * 0.75
            : width * 0.55,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            kAboutText,
            style: kBodyTextStyle,
          ),
        ),
      ),
    ];
  }

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
