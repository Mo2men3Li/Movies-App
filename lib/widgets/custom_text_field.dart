import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String? errorMessage;
  final String hintText;
  final String icon;
  final String? Function(String?)? validator;
  final bool? isVisible;
  final     IconButton? suffixIcon;


  const CustomTextField({
    super.key,
    required this.controller,
    this.errorMessage,
    required this.hintText,
    required this.icon,
    this.validator,
    this.isVisible=false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isVisible??false,
      validator: validator,
      controller: controller,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w500,
        fontSize: 16.sp,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        suffixIconColor: Colors.white,
        fillColor: Color(0xff282A28),
        prefixIcon: ImageIcon(
          AssetImage(icon),
          color: Colors.white,
        ),
        filled: true,
        hintText: hintText,
        hintStyle: GoogleFonts.inter(
          fontWeight: FontWeight.w500,
          fontSize: 16.sp,
          color: Colors.white,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}
