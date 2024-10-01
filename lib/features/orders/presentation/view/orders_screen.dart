import 'package:candy_cargo/common/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size(1.sw, 120.h),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: SizedBox(
                  width: 1.sw,
                  height: 90.h,
                  child: Column(
                    children: [
                      Stack(children: [
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
                      TabBar(
                        overlayColor: MaterialStateProperty.all<Color>(Colors.transparent),
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        indicator: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: mainPurple,
                              width: 4.0,
                            ),
                          ),
                        ),
                        labelStyle: GoogleFonts.comfortaa(
                          fontSize: 18,
                          color: mainPurple,
                          fontWeight: FontWeight.w900,
                        ),
                        unselectedLabelStyle: GoogleFonts.comfortaa(
                          fontSize: 18,
                          color: mainGreen,
                          fontWeight: FontWeight.w900,
                        ),
                        tabs: [
                          Tab(
                            child: Text(
                              "Prepairing",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Delivered",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Cancelled",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
          backgroundColor: Colors.white,
          body: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: TabBarView(children: [
              prepairingOrders(),
              deliveredOrders(),
              cancaledOrders(),
            ]),
          ),
        ),
      ),
    );
  }

  Column prepairingOrders() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  cartItem("assets/img/cart/cart_item_2.png", "SOUR PATCH", "Big Heads 12X141G",
                      "Candy&Chocolate | Qty. : 02 pcs", "12", false),
                  cartItem("assets/img/cart/cart_item_3.png", "Oreo Mini", "Cookies 8X115G",
                      "Candy&Chocolate | Qty. : 02 pcs", "15", false),
                  cartItem("assets/img/cart/cart_item_4.png", "Damak", "Caramel Croquant Chocolate Bar",
                      "Candy&Chocolate | Qty. : 02 pcs", "7", false),
                  cartItem("assets/img/cart/cart_item_5.png", "Mr Freshly", "Mini Crunch Donuts 12X85G",
                      "Candy&Chocolate | Qty. : 02 pcs", "9", false),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column deliveredOrders() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  cartItem("assets/img/cart/cart_item_2.png", "SOUR PATCH", "Big Heads 12X141G",
                      "Candy&Chocolate | Qty. : 02 pcs", "12", false),
                  cartItem("assets/img/cart/cart_item_3.png", "Oreo Mini", "Cookies 8X115G",
                      "Candy&Chocolate | Qty. : 02 pcs", "15", false),
                  cartItem("assets/img/cart/cart_item_4.png", "Damak", "Caramel Croquant Chocolate Bar",
                      "Candy&Chocolate | Qty. : 02 pcs", "7", false),
                  cartItem("assets/img/cart/cart_item_5.png", "Mr Freshly", "Mini Crunch Donuts 12X85G",
                      "Candy&Chocolate | Qty. : 02 pcs", "9", false),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column cancaledOrders() {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  cartItem("assets/img/cart/cart_item_2.png", "SOUR PATCH", "Big Heads 12X141G",
                      "Candy&Chocolate | Qty. : 02 pcs", "12", true),
                  cartItem("assets/img/cart/cart_item_3.png", "Oreo Mini", "Cookies 8X115G",
                      "Candy&Chocolate | Qty. : 02 pcs", "15", true),
                  cartItem("assets/img/cart/cart_item_4.png", "Damak", "Caramel Croquant Chocolate Bar",
                      "Candy&Chocolate | Qty. : 02 pcs", "7", true),
                  cartItem("assets/img/cart/cart_item_5.png", "Mr Freshly", "Mini Crunch Donuts 12X85G",
                      "Candy&Chocolate | Qty. : 02 pcs", "9", true),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

Column cartItem(String image, String brandName, String productName, String category, String price, bool canceled) {
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
                              overflow: TextOverflow.ellipsis,
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
                            Visibility(
                              visible: canceled,
                              child: Container(
                                decoration: BoxDecoration(color: mainPurple, borderRadius: BorderRadius.circular(78.w)),
                                padding: EdgeInsets.all(7.w),
                                child: Text(
                                  "Re-order",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
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
