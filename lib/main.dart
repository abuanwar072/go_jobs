import 'package:flutter/material.dart';
import 'package:go_jobs/screens/onbording/onbording_screen.dart';

import 'theme.dart';

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
      theme: buildLightThemeData(context),
      darkTheme: darkThemeData,
      themeMode: ThemeMode.dark,
      home: OnBordingScreen(),
    );
  }
}
