import 'package:flutter/material.dart';

import 'profile_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Abdullah Deshmukh - Mobile Developer',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        fontFamily: 'GoogleSansRegular',
      ),
      home: ProfilePage(),
    );
  }
}
