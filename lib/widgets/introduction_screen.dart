import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({super.key, required this.navigate});

  final void Function() navigate;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/onboarding.png',
          fit: BoxFit.fill,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 33,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                textAlign: TextAlign.center,
                "Find Your Next Favorite Movie Here",
                style: GoogleFonts.inter(
                  fontSize: 36.sp,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                "Get access to a huge library of movies to suit all tastes. You will surely like it.",
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 20.sp,
                  color: Colors.white.withOpacity(.6),
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              ElevatedButton(
                onPressed: () {
                  navigate();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r)),
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  backgroundColor: Color(0xffF6BD00),
                ),
                child: Text(
                  'Explore Now',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff121312),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
