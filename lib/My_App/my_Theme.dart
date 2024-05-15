import 'package:flutter/material.dart';

class MyTheme {
  static const Color primaryColor = Color(0xFF186351);
  static const Color secondaryColor = Colors.white;
  static const Color darkPrimaryColor = Color(0xFF004B40);

  static ThemeData lightTheme = ThemeData(
      dividerTheme: DividerThemeData(
        color: primaryColor,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 17,
        ),
        iconTheme: IconThemeData(
          color: secondaryColor,
          size: 30,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              textStyle: const TextStyle(
                fontSize: 12,
                color: secondaryColor,
              ))),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedLabelStyle: TextStyle(fontFamily: "Cairo"),
          backgroundColor: primaryColor,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: true,
          showUnselectedLabels: false,
          selectedItemColor: secondaryColor,
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 20)));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: darkPrimaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 17,
        ),
        iconTheme: IconThemeData(
          color: secondaryColor,
          size: 30,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              textStyle: const TextStyle(
                fontSize: 12,
                color: secondaryColor,
              ))),
      bottomAppBarTheme: const BottomAppBarTheme(
          color: primaryColor,
          shadowColor: Colors.grey,
          padding: EdgeInsets.zero),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          unselectedItemColor: Colors.grey,
          selectedItemColor: secondaryColor,
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 20)));
}
