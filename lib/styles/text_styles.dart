import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/styles/color.dart';

class TextStyles {
  static TextStyle headline1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 48,
    color: AppColor.blackBase,
  );
  static TextStyle headline2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 34,
    color: AppColor.blackBase,
    letterSpacing: 0.25
  );
  static TextStyle headline3 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 24,
    color: AppColor.blackBase,
  );
  static TextStyle headline4 = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 20,
    color: AppColor.blackBase,
    letterSpacing: 0.15
  );
  static TextStyle subtitle1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColor.blackBase,
    letterSpacing: 0.15
  );
  static TextStyle subtitle2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColor.blackBase,
    letterSpacing: 0.1
  );
  static TextStyle body1 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColor.blackBase,
    letterSpacing: 0.5
  );
  static TextStyle body2 = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColor.blackBase,
    letterSpacing: 0.25
  );
  static TextStyle button = GoogleFonts.roboto(
    fontWeight: FontWeight.w500,
    fontSize: 14,
    color: AppColor.blackBase,
    letterSpacing: 1.25
  );
  static TextStyle caption = GoogleFonts.roboto(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: AppColor.blackBase,
    letterSpacing: 0.4
  );

}
