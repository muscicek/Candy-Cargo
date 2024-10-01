import 'package:candy_cargo/common/widgets/formFieldWithText.dart';
import 'package:candy_cargo/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: Size(1.sw, 120.h),
            child: SizedBox(
              width: 1.sw,
              height: 60.h,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 20.w,
                  top: 20.h,
                ),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: 40.w,
                        height: 40.w,
                        decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: mainGreen)),
                        child: Icon(
                          Icons.arrow_back,
                          color: mainBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.h),
                child: Text(
                  "New Password",
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
                  "Your new password must be different from previously used passwords.",
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
                child: formFieldWithText(true, "****************", "Password"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                child: formFieldWithText(true, "****************", "Confirm Password"),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
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
                    "Create New Password",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
