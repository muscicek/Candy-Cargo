import 'package:candy_cargo/common/constants/colors.dart';
import 'package:candy_cargo/common/widgets/formFieldWithText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 30.h),
                        child: Text(
                          "Create an Account",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w500,
                            fontSize: 24.sp,
                            color: mainBlack,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.h, right: 30.w, left: 30.w),
                        child: Text(
                          "To register to the system and discover Candy Cargo's advantageous products, you can register by filling in the information completely.",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                            color: secondaryBlack,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 0.5.sw,
                            child: Padding(
                              padding: EdgeInsets.only(right: 5.w, left: 20.w, top: 25.h),
                              child: formFieldWithText(false, "Lütfi", "First Name"),
                            ),
                          ),
                          SizedBox(
                            width: 0.5.sw,
                            child: Padding(
                              padding: EdgeInsets.only(left: 5.w, right: 20.w, top: 25.h),
                              child: formFieldWithText(false, "Kara", "Last Name"),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                        child: formFieldWithText(false, "destek@ayyildizsoft.com.tr", "E-Mail"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 24.w,
                              height: 24.w,
                              child: Checkbox(
                                value: true,
                                onChanged: (value) {},
                                activeColor: mainPurple,
                              ),
                            ),
                            Text(
                              "Subscribe to our email newsletter",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: mainBlack,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                        child: formFieldWithText(false, "+90 (545) 201 8367", "Phone Number (required)"),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                        child: formFieldWithText(false, "+90 (545) 201 8367", "Fax (Optional)"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 15.h),
                child: Row(
                  children: [
                    SizedBox(
                      width: 24.w,
                      height: 24.w,
                      child: Checkbox(
                        value: true,
                        onChanged: (value) {},
                        activeColor: mainPurple,
                      ),
                    ),
                    Text(
                      "I am signing up as a wholesale/retailer partner",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: mainBlack,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: mainPurple,
                    elevation: 0,
                    overlayColor: Colors.transparent,
                    fixedSize: Size(1.sw, 48.h),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                  ),
                  child: Text(
                    "Continue",
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
                padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have and ?",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                        color: mainBlack,
                      ),
                    ),
                    Text(
                      " Sign In",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: secondaryGreen,
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
