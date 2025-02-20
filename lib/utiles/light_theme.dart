import 'package:evently_app/utiles/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LightTheme extends BaseTheme {
  @override
  Color get blackColor => Color(0xff121312);

  @override
  Color get primaryColor => Color(0xffFFBB3B);

  @override
  Color get textFieldColor => Color(0xff282A28);

  @override
  Color get secondaryColor => Color(0xffD80027);

  @override
  ThemeData get theme => ThemeData(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: blackColor,
        appBarTheme: AppBarTheme(
          backgroundColor: blackColor,
          centerTitle: true,
        ),
        textTheme: TextTheme(
          titleSmall: GoogleFonts.inter(
            fontSize: 16.sp,
            color: primaryColor,
            fontWeight: FontWeight.w500,
          ),
          titleMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: primaryColor,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
}
