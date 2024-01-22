import 'package:theme_provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppTheme CustomAppThemeLight() {
  return AppTheme(
    id: "light_theme",
    description: "Custom Color Scheme",
    data: ThemeData(
      iconTheme: IconThemeData(
        color: Colors.black
      ),

        textTheme: TextTheme(
          bodyLarge: GoogleFonts.montserrat(color: Colors.black),
          bodyMedium: GoogleFonts.montserrat(color: Colors.black),
          bodySmall: GoogleFonts.montserrat(color: Colors.black),
          titleLarge: GoogleFonts.montserrat(color: Colors.white),
          titleMedium: GoogleFonts.montserrat(color: Colors.black),
          titleSmall: GoogleFonts.montserrat(color: Colors.white),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color(0xffffffff)
        ),
        dialogBackgroundColor: Colors.black,
        primaryColor: Colors.black,
        cardColor: const Color(0xffb2d1ff),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xffffffff)
        ),
        bottomAppBarTheme: const BottomAppBarTheme(
            color: Color(0xffffffff)
        ),
        scaffoldBackgroundColor: const Color(0xffffffff)
    ),
  );
}

