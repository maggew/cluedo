import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // c5d5ea - 759eb8 - 739ab7 - b3c5d7 - d8e1e9
  //? light Colors
  static const Color _lightScaffoldBackgroundColor = Color(0xFFf4faff);
  // von darüber: Colors.blue.shade50;
  static const Color _lightPrimaryColor = Color(0xFF7A85AD);
  static final Color _lightPrimaryVariantColor = Colors.blueGrey.shade800;
  static const Color _lightOnPrimaryColor = Color(0xff0B3954);
  // von darüber: Colors.blueGrey.shade200;
  static const Color _lightOnPrimaryContainerColor = Color(0xffA0CA92);

  static const Color _lightSecondaryColor = Color.fromARGB(255, 68, 194, 233);

  static const Color _lightTertiaryColor = Color(0xfff6ae2d);
  static final Color _appbarColorLight = Colors.green.shade400;
  //static final Color _accentColorLight = Colors.amber;

  static const Color _lightTextColorPrimary = Colors.white; //Colors.black;
  static const Color _lightTextColorOnBackground = Colors.black87;

  static const Color _darkScaffoldBackgroundColor =
      Color.fromARGB(255, 43, 49, 54);
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkOnPrimaryColor = Color.fromARGB(255, 23, 37, 87);
  static const Color _darkTextColorPrimary = Colors.white;
  //static const Color _darkTextColorOnBackground = Colors.white24;
  static final Color _darkPrimaryColor = Colors.blueGrey.shade700;
  static const Color _tertiaryColorDark = Color.fromARGB(255, 231, 76, 96);
  static const Color _inversePrimaryDark = Color.fromARGB(255, 148, 187, 148);

  static const Color _lightIconColor = Colors.white;
  //static const Color _darkIconColor = Colors.white70;

  static const Color _darkSecondaryColor = Color.fromARGB(255, 76, 180, 221);
  //static const Color _accentColorDark = Color.fromRGBO(38, 214, 82, 1);

  static const TextStyle _lightDisplayLargeText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: "Rubik",
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle _lightDisplayMediumText =
      _lightDisplayLargeText.copyWith(fontSize: 18);

  static final TextStyle _lightDisplaySmallText =
      _lightDisplayLargeText.copyWith(fontSize: 16);

  static const TextStyle _lightBodyLargeText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: "Rubik",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static final TextStyle _lightBodyMediumText =
      _lightDisplayLargeText.copyWith(fontSize: 14);

  static final TextStyle _lightBodySmallText =
      _lightDisplayLargeText.copyWith(fontSize: 12);

  ///used for Buttons
  static const TextStyle _lightLabelLargeText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: "Rubik",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 16,
  );

  static final TextStyle _lightLabelMediumText =
      _lightLabelLargeText.copyWith(fontSize: 14);

  static final TextStyle _lightLabelSmallText =
      _lightLabelLargeText.copyWith(fontSize: 12);

  static const TextStyle _lightHeadlineLargeText = TextStyle(
    color: _lightTextColorOnBackground,
    fontFamily: "Rubik",
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.normal,
    fontSize: 18,
  );

  static final TextStyle _lightHeadlineMediumText =
      _lightHeadlineLargeText.copyWith(fontSize: 16);

  static final TextStyle _lightHeadlineSmallText =
      _lightHeadlineLargeText.copyWith(fontSize: 14);

  static final TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightDisplayLargeText,
    displayMedium: _lightDisplayMediumText,
    displaySmall: _lightDisplaySmallText,
    bodyLarge: _lightBodyLargeText,
    bodyMedium: _lightBodyMediumText,
    bodySmall: _lightBodySmallText,
    labelLarge: _lightLabelLargeText,
    labelMedium: _lightLabelMediumText,
    labelSmall: _lightLabelSmallText,
    headlineLarge: _lightHeadlineLargeText,
    headlineMedium: _lightHeadlineMediumText,
    headlineSmall: _lightHeadlineSmallText,
  );

  static final TextStyle _darkDisplayLargeText =
      _lightDisplayLargeText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkDisplayMediumText =
      _lightDisplayMediumText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkDisplaySmallText =
      _lightDisplaySmallText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkBodyLargeText =
      _lightBodyLargeText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkBodyMediumText =
      _lightBodyMediumText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkBodySmallText =
      _lightBodySmallText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkLabelLargeText =
      _lightLabelLargeText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkLabelMediumText =
      _lightLabelMediumText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkLabelSmallText =
      _lightLabelSmallText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkHeadlineLargeText =
      _lightHeadlineLargeText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkHeadlineMediumText =
      _lightHeadlineMediumText.copyWith(color: _darkTextColorPrimary);
  static final TextStyle _darkHeadlineSmallText =
      _lightHeadlineSmallText.copyWith(color: _darkTextColorPrimary);

  static final TextTheme _darkTextTheme = TextTheme(
    bodyLarge: _darkBodyLargeText,
    bodyMedium: _darkBodyMediumText,
    bodySmall: _darkBodySmallText,
    displayLarge: _darkDisplayLargeText,
    displayMedium: _darkDisplayMediumText,
    displaySmall: _darkDisplaySmallText,
    labelLarge: _darkLabelLargeText,
    labelMedium: _darkLabelMediumText,
    labelSmall: _darkLabelSmallText,
    headlineLarge: _darkHeadlineLargeText,
    headlineMedium: _darkHeadlineMediumText,
    headlineSmall: _darkHeadlineSmallText,
  );

  static final InputDecorationTheme _inputDecorationThemeDarkMode =
      InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: _darkSecondaryColor)),
          floatingLabelStyle: const TextStyle(color: Colors.white));

  static const IconThemeData _ligthIconTheme =
      IconThemeData(color: _lightIconColor);

  //? light Theme
  static final ThemeData lightTheme = ThemeData(
    inputDecorationTheme: _inputDecorationThemeDarkMode,
    scaffoldBackgroundColor: _lightScaffoldBackgroundColor,
    appBarTheme: const AppBarTheme(
      color: _lightPrimaryColor,
      titleTextStyle: _lightDisplayLargeText,
      iconTheme: _ligthIconTheme,
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: _appbarColorLight),
    colorScheme: ColorScheme.light(
      surface: _lightScaffoldBackgroundColor,
      primary: _lightPrimaryColor,
      secondary: _lightSecondaryColor,
      onPrimary: _lightOnPrimaryColor,
      onPrimaryContainer: _lightOnPrimaryContainerColor,
      primaryContainer: _lightPrimaryVariantColor,
      tertiary: _lightTertiaryColor,
    ),
    textTheme: _lightTextTheme,
    iconTheme: _ligthIconTheme,
  );


  //? dark theme
  static final ThemeData darkTheme = ThemeData(
    inputDecorationTheme: _inputDecorationThemeDarkMode,
    scaffoldBackgroundColor: _darkScaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _darkPrimaryColor,
      iconTheme: const IconThemeData(color: _lightIconColor),
    ),
    bottomAppBarTheme: BottomAppBarTheme(color: _darkPrimaryColor),
    colorScheme: ColorScheme.dark(
      primary: _darkPrimaryColor,
      secondary: _darkSecondaryColor,
      onPrimary: _darkOnPrimaryColor,
      primaryContainer: _darkPrimaryVariantColor,
      tertiary: _tertiaryColorDark,
      inversePrimary: _inversePrimaryDark,
    ),
    textTheme: _darkTextTheme,
  );
}


//? Potenzielle Paletten: 
//! 545e75 - 63adf2 - a7cced - 304d6d - 82a0bc
//! c5d5ea - 759eb8 - 739ab7 - b3c5d7 - d8e1e9


//? Farben die Meli gefallen
//  #D8F793 - #A0CA92 - #F7BFB4