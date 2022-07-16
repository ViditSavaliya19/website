import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle headerTextStyle(Color color) {
  return GoogleFonts.josefinSans(
      textStyle: TextStyle(fontSize: 20, color: color));
}

TextStyle titleTextStyle(Color color, double size) {
  return GoogleFonts.josefinSans(
    textStyle: TextStyle(
      fontSize: size,
      color: color,
      overflow: TextOverflow.clip,

    ),
  );
}
