import 'package:flutter/material.dart';
import 'package:go_jobs/constants.dart';
import 'package:go_jobs/screens/onbording/onbording_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Go Jobs',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgColorLightTheme,
        textTheme:
            GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).copyWith(
                // bodyText2: TextStyle(color: bodyTextColorLightTheme),
                ),
      ),
      home: OnBordingScreen(),
    );
  }
}
