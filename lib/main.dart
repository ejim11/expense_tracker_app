import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:expense_tracker/widgets/expenses.dart';

// choosing a color scheme for light mode
var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

// choosing a color scheme for dark mode
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // This makes the orientation of the device to be fixed
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) {

  // });
  runApp(
    MaterialApp(
      // setting the dark theme
      darkTheme: ThemeData.dark().copyWith(
        // setting the color scheme for the dark theme
        colorScheme: kDarkColorScheme,
        // setting the dark color scheme and margin for the card theme
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),
        // setting the dark theme bg and foreground colors for the elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kDarkColorScheme.primaryContainer,
              foregroundColor: kDarkColorScheme.onPrimaryContainer),
        ),
      ),
      // setting the defualt theme which is the light theme
      theme: ThemeData().copyWith(
        // setting the scaffold bg color theme
        // scaffoldBackgroundColor: const Color.fromARGB(255, 196, 212, 231),

        // setting the color scheme for the light theme
        colorScheme: kColorScheme,

        // setting the bg and foreground color for the light theme for the app bar theme
        appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer),

        // setting the light color scheme and margin for the card theme
        cardTheme: const CardTheme().copyWith(
          color: kColorScheme.secondaryContainer,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        ),

        // setting the light theme bg and foreground colors for the elevated button theme
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer),
        ),

        // setting the light theme for the text theme
        textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kColorScheme.onSecondaryContainer,
                fontSize: 15)),
      ),
      // choosing theme based of the systems theme
      themeMode: ThemeMode.system,
      home: const Expenses(),
    ),
  );
}
