import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,

    colorScheme: const ColorScheme.dark(
      primary: Color.fromARGB(255, 0, 0, 0),     // nero
      secondary: Color.fromARGB(255, 0, 0, 0),   // nero
      surface: Color.fromARGB(255, 51, 51, 51),   // contorni partner
    ),
    scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0),

    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      foregroundColor: Color.fromARGB(255, 255, 255, 255), //sempre bianco menu hamburger e freccia indietro
      centerTitle: true,
    ),

    drawerTheme: const DrawerThemeData(
      backgroundColor: Color(0xFF121212),
    ),

    listTileTheme: const ListTileThemeData(
      iconColor: Colors.white,
      textColor: Colors.white,
    ),
  );
}
 