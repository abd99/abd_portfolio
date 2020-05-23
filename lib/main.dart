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
        primarySwatch: Colors.blueGrey,
        brightness: Brightness.dark,
        primaryColor: Color(0xFF0A0E21),
        accentColor: Color(0xFF8D8E98),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        fontFamily: 'GoogleSansRegular',
      ),
      home: ProfilePage(),
    );
  }
}
