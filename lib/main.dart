import 'package:abd_portfolio/profile_image_visibility.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Abdullah Deshmukh - Mobile Engineer',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        fontFamily: 'GoogleSansRegular',
        colorScheme: ColorScheme.dark(
          primary: Colors.blueGrey,
          secondary: Color(0xFF8D8E98),
          brightness: Brightness.dark,
        ),
      ),
      home: ChangeNotifierProvider<ProfileImageVisibility>(
        create: (context) => ProfileImageVisibility(),
        child: ProfilePage(),
      ),
    );
  }
}
