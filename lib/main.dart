import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_app_demo/screens/homescreen.dart';
import '/utils/constants.dart';

void main() => runApp(const SkygoalAppDemo());

class SkygoalAppDemo extends StatelessWidget {
  const SkygoalAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily,
        unselectedWidgetColor: Constants.accentColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Constants.accentColor,
          elevation: 0.0,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Constants.accentColor,
          selectedItemColor: Constants.primaryColor,
          unselectedItemColor: Constants.grey500,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
