import 'package:evently_app/screens/register_screen.dart';
import 'package:evently_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  static const String routeName = 'Login';
  final emailController = TextEditingController();
  final passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 118.h,
              width: 121.w,
            ),
            SizedBox(
              height: 69.h,
            ),
            CustomTextField(
              controller: emailController,
              errorMessage: 'Invalid email or password',
              hintText: 'Email',
              icon: 'assets/images/mail.png',
            ),
            SizedBox(
              height: 22.h,
            ),
            CustomTextField(
              controller: passController,
              errorMessage: 'Invalid email or password',
              hintText: 'Password',
              icon: 'assets/images/pass.png',
            ),
            SizedBox(
              height: 17.h,
            ),
            GestureDetector(
              onTap: () {},
              child: Text(
                'Forget password? ',
                textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                padding: EdgeInsets.symmetric(vertical: 16.h),
                backgroundColor: Color(0xffF6BD00),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff121312),
                ),
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ?",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RegisterScreen.routeName);
                  },
                  child: Text(
                    'Create one ',
                    textAlign: TextAlign.end,
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Divider(
                  thickness: 2,
                  color: Theme.of(context).primaryColor,
                ),
                Text(
                  "Or",
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontSize: 15.sp,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  thickness: 2,
                  color: Theme.of(context).primaryColor,
                ),
              ],
            ),
            SizedBox(
              height: 28.h,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.r)),
                padding: EdgeInsets.symmetric(vertical: 16.h),
                backgroundColor: Color(0xffF6BD00),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(
                      'assets/images/google.png',
                    ),
                    color: Color(0xff282A28),
                    size: 24,
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text(
                    'Login with Google',
                    style: GoogleFonts.inter(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff121312),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
