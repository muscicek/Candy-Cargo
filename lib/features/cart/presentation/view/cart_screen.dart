import 'package:candy_cargo/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(1.sw, 120.h),
            child: Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SizedBox(
                width: 1.sw,
                height: 40.h,
                child: Stack(children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.w),
                      child: GestureDetector(
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
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "My Cart",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 16.sp,
                        color: mainBlack,
                      ),
                    ),
                  )
                ]),
              ),
            )),
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        cartItem("assets/img/cart/cart_item_2.png", "SOUR PATCH", "Big Heads 12X141G",
                            "Candy&Chocolate", "12"),
                        cartItem(
                            "assets/img/cart/cart_item_3.png", "Oreo Mini", "Cookies 8X115G", "Candy&Chocolate", "15"),
                        cartItem("assets/img/cart/cart_item_4.png", "Damak", "Caramel Croquant Chocolate Bar 6X60g",
                            "Candy&Chocolate", "7"),
                        cartItem("assets/img/cart/cart_item_5.png", "Mr Freshly", "Mini Crunch Donuts 12X85G 6Pack",
                            "Candy&Chocolate", "9"),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: mainGreen),
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(16.w), topRight: Radius.circular(16.w))),
                child: Column(
                  children: [
                    Padding(
                        padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sub-Total",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: secondaryBlack,
                              ),
                            ),
                            Text(
                              "£44",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: mainPurple,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: secondaryBlack,
                              ),
                            ),
                            Text(
                              "£5",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: mainPurple,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                      child: const Divider(
                        thickness: 0.5,
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 5.h, left: 20.w, right: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery Fee",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: secondaryBlack,
                              ),
                            ),
                            Text(
                              "£5",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14.sp,
                                color: mainPurple,
                              ),
                            ),
                          ],
                        )),
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, left: 20.w, right: 20.w, bottom: 20.h),
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
                          "Proceed to Checkout",
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
            ],
          ),
        ),
      ),
    );
  }

  Column cartItem(String image, String brandName, String productName, String category, String price) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
          ),
          child: SizedBox(
            width: 1.sw,
            child: Row(
              children: [
                Container(
                  width: 84.w,
                  height: 84.w,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.w)),
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w),
                    child: SizedBox(
                      height: 84.w,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                brandName,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 10.sp,
                                  color: mainBlack,
                                ),
                              ),
                              Text(
                                " " + productName,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                  color: mainBlack,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            category,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              color: secondaryBlack,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "£" + price,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                  color: mainPurple,
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(right: 7.w),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      decoration: BoxDecoration(
                                          color: formBackground, borderRadius: BorderRadius.circular(6.w)),
                                      child: Icon(
                                        Icons.remove,
                                        size: 12.w,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "1",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                      color: mainBlack,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Container(
                                      width: 24.w,
                                      height: 24.w,
                                      decoration:
                                          BoxDecoration(color: mainPurple, borderRadius: BorderRadius.circular(6.w)),
                                      child: Icon(
                                        Icons.add,
                                        size: 12.w,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10.h, bottom: 10.h),
          child: const Divider(
            thickness: 0.5,
          ),
        )
      ],
    );
  }
}
