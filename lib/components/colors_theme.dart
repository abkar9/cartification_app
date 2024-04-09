import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class ColorTheme {
  static Color brown = const Color(0xff9F734C);
  static Color white = const Color(0xffffffff);
  static Color lightBrown = const Color(0xffE5A770);
  static Color black = const Color(0xff000000);

  static ThemeData themeLight(BuildContext context) {
    return ThemeData.light().copyWith(
        textTheme: GoogleFonts.elMessiriTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
            color: brown, actionsIconTheme: IconThemeData(color: lightBrown)),
        primaryColor: brown);
  }
}
