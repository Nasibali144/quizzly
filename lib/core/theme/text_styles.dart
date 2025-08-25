import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

sealed class AppTextStyles {
  static final expletusSansRegular70 = GoogleFonts.expletusSans(
    fontSize: 70,
    letterSpacing: 2.5,
    color: AppColors.white,
  );

  static final expletusSansMedium20 = GoogleFonts.expletusSans(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.white,
  );

  static final expletusSansRegular72 = GoogleFonts.expletusSans(
    fontSize: 74,
    color: AppColors.black,
  );

  static final dmSansBold28 = GoogleFonts.dmSans(
    color: AppColors.deepPurple,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static final dmSansMedium22 = GoogleFonts.dmSans(
    color: AppColors.deepPurple,
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );

  static final dmSansBold24 = GoogleFonts.dmSans(
    color: AppColors.white,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static final dmSansMedium20 = GoogleFonts.dmSans(
    color: AppColors.white,
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );

  static final dmSansRecgular16 = GoogleFonts.dmSans(
    color: AppColors.black,
    fontSize: 16,
  );
}
