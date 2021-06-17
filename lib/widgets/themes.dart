import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme
{
  static ThemeData lightTheme(BuildContext context) =>ThemeData(
    scaffoldBackgroundColor: creamColor,
    cardColor: Colors.white,
  buttonColor: Colors.green,
  accentColor: Colors.deepOrange,
  fontFamily: GoogleFonts.poppins().fontFamily,
  appBarTheme: AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(
  color: Colors.black,

  ),
  textTheme: Theme.of(context).textTheme
  ),
  );


  static ThemeData darkTheme(BuildContext context) => ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    brightness:  Brightness.dark,
    cardColor: Colors.grey.shade800,
    accentColor: Colors.white,
    buttonColor: Colors.green,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
        color: Colors.black,
        titleTextStyle: TextStyle(
          color: Colors.white
        ),
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        textTheme: Theme.of(context).textTheme
    ),
  );

  static Color creamColor=Color(0xffF2F2F2);
  static Color darkCreamColor=Color(0xff263238);
  static Color lightColor=Color(0xffffdb99);
}