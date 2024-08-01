import 'package:flutter/material.dart';

ThemeData themeOriginalLigth = ThemeData(
  //COLORES PRINCIPALES
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color.fromRGBO(56, 101, 110, 1),
  primaryColorLight: const Color.fromRGBO(83, 133, 117, .76),
  primaryColorDark: const Color.fromRGBO(36, 86, 102, .95),
  disabledColor: Colors.white70,
  secondaryHeaderColor: const Color.fromRGBO(83, 133, 117, .76),
  dialogBackgroundColor: Colors.white,
  indicatorColor: const Color.fromRGBO(69, 255, 171, 1),
  hintColor: const Color.fromRGBO(178, 179, 185, .16),
  splashColor: const Color.fromRGBO(69, 255, 171, 1),

  ///COLORES Y FORMATO DE TEXTOS
  //COLOR Verde $\{Color.fromRGBO(83, 133, 117, .76)}
  primaryTextTheme: const TextTheme(
    //FUENTES DE 11 - 15
    bodyLarge: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 14,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    bodyMedium: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 12,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    bodySmall: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 10,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 12 - 16
    labelLarge: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 19,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    labelMedium: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 17,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    labelSmall: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 15,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 17 - 21
    titleLarge: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 40,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    titleMedium: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 36,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    titleSmall: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 26,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 23 - 27
    headlineLarge: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 52,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    headlineMedium: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 48,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    headlineSmall: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 46,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 18 - 24
    displayLarge: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 58,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    displayMedium: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 56,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    displaySmall: TextStyle(
        fontFamily: 'Rajdhani',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 54,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
  ),

  //COLOR AZUl $\{Color.fromRGBO(36, 86, 102, .95)}

  //secondaryTextTheme
  textTheme: const TextTheme(
    //FUENTES DE 11 - 15
    bodyLarge: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 14,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    bodyMedium: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 13,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    bodySmall: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 11,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 12 - 16
    labelLarge: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 19,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    labelMedium: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 17,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    labelSmall: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 15,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 17 - 21
    titleLarge: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 38,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    titleMedium: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 34,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    titleSmall: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 24,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 23 - 27
    headlineLarge: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 52,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    headlineMedium: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 50,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    headlineSmall: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 48,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),

    //FUENTES DE 18 - 24
    displayLarge: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 58,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    displayMedium: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 56,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    displaySmall: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(56, 101, 116, 1),
        fontSize: 54,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
  ),
  //ESTILO DE LOS ICONOS
  iconTheme: const IconThemeData(color: Colors.white, size: 34, shadows: []),
  //ESTILO DE LOS TEXTFIELD
  inputDecorationTheme: const InputDecorationTheme(
    isCollapsed: true,
    suffixIconColor: Color.fromRGBO(36, 86, 102, .95),
    focusColor: Colors.grey,
    hoverColor: Colors.blue,
    labelStyle: TextStyle(
        fontFamily: 'QuickSand',
        color: Colors.black87,
        fontWeight: FontWeight.bold,
        fontSize: 19,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    hintStyle: TextStyle(
        fontFamily: 'QuickSand',
        color: Colors.grey,
        fontSize: 17,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    floatingLabelStyle: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 19,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    counterStyle: TextStyle(
        fontFamily: 'QuickSand',
        color: Color.fromRGBO(83, 133, 117, .76),
        fontSize: 19,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.5,
        overflow: TextOverflow.clip),
    enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 1.5,
      color: Color.fromRGBO(83, 133, 117, .76),
    )),
    border: UnderlineInputBorder(
        borderSide: BorderSide(
      // width: 2.5,
      color: Color.fromRGBO(83, 133, 117, .76),
    )),
    focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
      width: 2.5,
      color: Color.fromRGBO(56, 101, 116, 1),
    )),
  ),

  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color.fromRGBO(56, 101, 116, 1),
      type: BottomNavigationBarType.fixed,
      selectedIconTheme: IconThemeData(
        color: Colors.white,
      ),
      unselectedIconTheme: IconThemeData(
        color: Colors.grey,
      ),
      selectedLabelStyle: TextStyle(
          fontFamily: 'QuickSand',
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 1.5,
          overflow: TextOverflow.clip),
      unselectedLabelStyle: TextStyle(
          fontFamily: 'QuickSand',
          color: Colors.white,
          fontSize: 12,
          letterSpacing: 1.5,
          overflow: TextOverflow.clip),
      showSelectedLabels: false,
      showUnselectedLabels: true,
      landscapeLayout: BottomNavigationBarLandscapeLayout.spread),
);
