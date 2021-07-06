import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  colorScheme: ThemeData.light()
      .colorScheme
      .copyWith(secondary: secondaryColorLightTheme),
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme)
      .copyWith(bodyText2: TextStyle(color: bodyTextColorLightTheme)),
  elevatedButtonTheme: elevatedButtonThemeData,
  inputDecorationTheme: InputDecorationTheme(
    border: textFieldOutlineInputBorderLightTheme,
    enabledBorder: textFieldOutlineInputBorderLightTheme,
    focusedBorder: textFieldOutlineInputBorderLightTheme,
  ),
);

// ThemeData buildLightThemeData(BuildContext context) {
//   return ThemeData(
//     brightness: Brightness.light,
//     primaryColor: primaryColor,
//     colorScheme: ThemeData.light()
//         .colorScheme
//         .copyWith(secondary: secondaryColorLightTheme),
//     textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme)
//         .copyWith(bodyText2: TextStyle(color: bodyTextColorLightTheme)),
//     elevatedButtonTheme: elevatedButtonThemeData,
//     inputDecorationTheme: InputDecorationTheme(
//       border: textFieldOutlineInputBorderLightTheme,
//       enabledBorder: textFieldOutlineInputBorderLightTheme,
//       focusedBorder: textFieldOutlineInputBorderLightTheme,
//     ),
//   );
// }

final darkThemeData = ThemeData(
  brightness: Brightness.dark,
  primaryColor: primaryColor,
  colorScheme:
      ThemeData.dark().colorScheme.copyWith(secondary: secondaryColorDarkTheme),
  scaffoldBackgroundColor: bgColorDarkTheme,
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme)
      .copyWith(bodyText2: TextStyle(color: bodyTextColorDarkTheme)),
  elevatedButtonTheme: elevatedButtonThemeData,
  inputDecorationTheme: InputDecorationTheme(
    border: textFieldOutlineInputBorderDarkTheme,
    enabledBorder: textFieldOutlineInputBorderDarkTheme,
    focusedBorder: textFieldOutlineInputBorderDarkTheme,
  ),
);

final elevatedButtonThemeData = ElevatedButtonThemeData(
  style: TextButton.styleFrom(
    backgroundColor: primaryColor,
    padding: EdgeInsets.all(defaultPadding),
    shape: RoundedRectangleBorder(
      borderRadius: const BorderRadius.all(
        Radius.circular(defaultBorderRadius),
      ),
    ),
  ),
);

const textFieldOutlineInputBorderLightTheme = OutlineInputBorder(
  borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadius)),
  borderSide: BorderSide(
    color: Color(0xFFE7E9EC),
  ),
);

final textFieldOutlineInputBorderDarkTheme =
    textFieldOutlineInputBorderLightTheme.copyWith(
  borderSide: BorderSide(
    color: bodyTextColorDarkTheme,
  ),
);
