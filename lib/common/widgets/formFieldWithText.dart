import 'package:candy_cargo/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

SizedBox formFieldWithText(bool obscure, String hintText, String topText) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            topText,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 12.sp,
              color: mainBlack,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: TextFormField(
              cursorColor: mainBlack,
              obscureText: obscure,
              decoration: InputDecoration(
                  suffixIcon: obscure
                      ? Padding(
                          padding: EdgeInsets.only(right: 10.w),
                          child: const Icon(Icons.visibility_off_outlined),
                        )
                      : null,
                  suffixIconConstraints: const BoxConstraints(
                    minWidth: 2,
                    minHeight: 2,
                  ),
                  border: InputBorder.none,
                  hintText: hintText,
                  hintStyle: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 12.sp,
                    color: secondaryBlack,
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8.w), borderSide: BorderSide.none),
                  fillColor: formBackground,
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 10.w)),
            ),
          )
        ],
      ),
    );
  }