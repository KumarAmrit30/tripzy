import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color(0xFF2D2D2D),
  primaryColor: const Color(0xFFCCEF6C),
  iconTheme: const IconThemeData(color: Colors.white),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    displayLarge: GoogleFonts.poppins(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    displaySmall: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.white70),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.white70),
    bodySmall: GoogleFonts.poppins(fontSize: 12, color: Colors.white60),
  ),
);

final ThemeData lightTheme = ThemeData.light().copyWith(
  scaffoldBackgroundColor: Colors.white,
  primaryColor: const Color(0xFFCCEF6C),
  iconTheme: const IconThemeData(color: Colors.black),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    displayLarge: GoogleFonts.poppins(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: GoogleFonts.poppins(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    displaySmall: GoogleFonts.poppins(
        fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: GoogleFonts.poppins(fontSize: 16, color: Colors.black87),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, color: Colors.black87),
    bodySmall: GoogleFonts.poppins(fontSize: 12, color: Colors.black54),
  ),
);