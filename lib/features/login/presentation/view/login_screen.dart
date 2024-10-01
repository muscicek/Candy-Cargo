import 'package:candy_cargo/common/widgets/formFieldWithText.dart';
import 'package:candy_cargo/common/constants/colors.dart';
import 'package:candy_cargo/features/home/presentation/view/home_screen.dart';
import 'package:candy_cargo/features/new_password/presentation/view/new_password_screen.dart';
import 'package:candy_cargo/features/register/presentation/view/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 100.h),
                child: Text(
                  "Login",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.sp,
                    color: mainBlack,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, right: 20.w, left: 20.w),
                child: Text(
                  "Welcome to Candy Cargo!",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: secondaryBlack,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 40.h),
                child: formFieldWithText(false, "destek@ayyildizsoft.com.tr", "E-Mail"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                child: formFieldWithText(true, "****************", "Password"),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 15.h, right: 20.w),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const NewPasswordScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Forgot Password?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: secondaryGreen,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainPurple,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                    fixedSize: Size(1.sw, 48.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                  ),
                  child: Text(
                    "Sign In",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t you have an account?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: mainBlack,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: Text(
                        " Sign up",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.sp,
                          color: secondaryGreen,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
