import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoarding_widget extends StatelessWidget {
  OnBoarding_widget({
    super.key,
    required this.navigate,
    required this.image,
    required this.title,
     this.desc,
    required this.index,
    this.back,
  });

  final void Function() navigate;
  void Function()? back;
  final String image;
  final String title;
   String? desc;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          image,
          fit: BoxFit.fill,
        ),
        index <2
            ? Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      desc!,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        color: Colors.white,
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
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                        ),
                        backgroundColor: Color(0xffF6BD00),
                      ),
                      child: Text(
                        'Next',
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff121312),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            :index<5 ? Padding(
                padding:
                     EdgeInsets.only(bottom: 8.h,right: 16.w,left: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      title,
                      style: GoogleFonts.inter(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      desc!,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 20.sp,
                        color: Colors.white,
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
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                        ),
                        backgroundColor: Color(0xffF6BD00),
                      ),
                      child: Text(
                        'Next',
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff121312),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        back!();
                      },
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: Color(0xffF6BD00),
                          width: 2.w,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            15.r,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                        ),
                        backgroundColor: Color(0xff121312),
                      ),
                      child: Text(
                        'Back',
                        style: GoogleFonts.inter(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffF6BD00),
                        ),
                      ),
                    ),
                  ],
                ),
              ):Padding(
          padding:
          EdgeInsets.only(bottom: 8.h,right: 16.w,left: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                textAlign: TextAlign.center,
                title,
                style: GoogleFonts.inter(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
                    borderRadius: BorderRadius.circular(15.r),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                  ),
                  backgroundColor: Color(0xffF6BD00),
                ),
                child: Text(
                  'Finish',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff121312),
                  ),
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              ElevatedButton(
                onPressed: () {
                  back!();
                },
                style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    color: Color(0xffF6BD00),
                    width: 2.w,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      15.r,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 16.h,
                  ),
                  backgroundColor: Color(0xff121312),
                ),
                child: Text(
                  'Back',
                  style: GoogleFonts.inter(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffF6BD00),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
