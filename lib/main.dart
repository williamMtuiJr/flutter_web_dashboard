import 'package:flutter/material.dart';
import 'package:nile_nini_web/constants.dart';
import 'screens/home_page.dart';
import 'screens/feeds_page.dart';
import 'screens/settings_page.dart';
import 'screens/login_screen.dart';
//import 'package:build_web_compilers/build_web_compilers.dart';
//import 'package:build_runner/build_runner.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        accentColor: kIconColour,
        buttonColor: kIconColour,
        indicatorColor: kIconColour,
        iconTheme: IconThemeData(
          color: kIconColour,
          opacity: 70.0,
          size: 25.0,
        ),
//        textTheme: TextTheme().copyWith(
//          headline1: kTextStyle,
//          bodyText1: kTextStyle,
//        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => Login(),
        HomePage.id: (context) => HomePage(),
        FeedsPage.id: (context) => FeedsPage(),
        SettingsPage.id: (context) => SettingsPage(),
        Login.id: (context) => Login(),
      },
    );
  }
}
