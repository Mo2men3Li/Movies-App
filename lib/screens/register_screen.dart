import 'package:carousel_slider/carousel_slider.dart';
import 'package:evently_app/screens/login_screen.dart';
import 'package:evently_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  static const String routeName = 'Register';

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();

  final nameController = TextEditingController();

  final passController = TextEditingController();

  final confPassController = TextEditingController();

  final phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  bool passwordVisible = true;

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CarouselSlider(
                  items: [
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      radius: 90.r,
                      child: Image(
                        image: AssetImage(
                          'assets/images/gamer3.png',
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      radius: 90.r,
                      child: Image(
                        image: AssetImage(
                          'assets/images/gamer.png',
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      radius: 90.r,
                      child: Image(
                        image: AssetImage(
                          'assets/images/gamer2.png',
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                    enlargeCenterPage: true,
                    height: 161.h,viewportFraction: .4.w,
                  ),
                ),
                SizedBox(
                  height: 69.h,
                ),
                CustomTextField(
                  controller: nameController,
                  hintText: 'Name',
                  icon: 'assets/images/name.png',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Name is required'; // Validation message for empty name
                    } else if (value.length < 3) {
                      return 'Name must be at least 3 characters'; // Validation message for empty name
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextField(
                  controller: emailController,
                  errorMessage: 'Invalid email or password',
                  hintText: 'Email',
                  icon: 'assets/images/mail.png',
                  validator: validateEmail,
                ),
                SizedBox(
                  height: 17.h,
                ),
                CustomTextField(
                  isVisible: passwordVisible,
                  controller: passController,
                  errorMessage: 'Invalid email or password',
                  hintText: 'Password',
                  icon: 'assets/images/pass.png',
                  validator: validatePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextField(
                  isVisible: passwordVisible,
                  controller: confPassController,
                  errorMessage: 'Invalid email or password',
                  hintText: 'Confirm Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  icon: 'assets/images/pass.png',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Confirm password is required';
                    } else if (value != passController.text) {
                      return "Passwords don't match";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 22.h,
                ),
                CustomTextField(
                  controller: phoneController,
                  hintText: 'Phone',
                  icon: 'assets/images/phone.png',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Phone number is required';
                    } else if (value.length < 10) {
                      return 'Please enter a valid phone number';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 22.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.r)),
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    backgroundColor: Color(0xffF6BD00),
                  ),
                  child: Text(
                    'Create Account',
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
                      "Already Have an Account ? ",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      child: Text(
                        'Login ',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  String? validateEmail(String? email) {
    RegExp emailRegex =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    final isEmailValid = emailRegex.hasMatch(email ?? '');
    if (!isEmailValid) {
      return 'Please enter a valid email';
    }
    return null;
  }

  String? validatePassword(String? value) {
    RegExp passRegex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value!.isEmpty) {
      return 'Password is required';
    } else if (!passRegex.hasMatch(value ?? '')) {
      return 'Password should be at least 8 characters with a minimum of 1 number';
    }
    return null;
  }
}
