import 'package:candy_cargo/common/constants/colors.dart';
import 'package:candy_cargo/features/cart/presentation/view/cart_screen.dart';
import 'package:candy_cargo/features/orders/presentation/view/orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appBar(),
        backgroundColor: Colors.white,
        body: SizedBox(
          width: 1.sw,
          height: 1.sh,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        searchSection(),
                        sliderSection(),
                        buildStep(),
                        categorySection(),
                        Padding(
                          padding: EdgeInsets.only(right: 20.w, bottom: 20.h),
                          child: SizedBox(
                            width: 1.sw,
                            child: GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              childAspectRatio: 156.h / 191.w,
                              physics: const NeverScrollableScrollPhysics(),
                              children: [
                                shopListItem("assets/img/cart/cart_item_3.png"),
                                shopListItem("assets/img/cart/cart_item_4.png"),
                                shopListItem("assets/img/cart/cart_item_2.png"),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              bottomBar(context),
            ],
          ),
        ),
      ),
    );
  }

  Container bottomBar(BuildContext context) {
    return Container(
        width: 1.sw,
        height: 60.h,
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_rounded,
                    color: mainPurple,
                    size: 25.w,
                  ),
                  Text(
                    "Home",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: mainPurple,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.category,
                    color: navBarGray,
                    size: 25.w,
                  ),
                  Text(
                    "Categories",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: navBarGray,
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.favorite_border_rounded,
                    color: navBarGray,
                    size: 25.w,
                  ),
                  Text(
                    "Favorites",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 10.sp,
                      color: navBarGray,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const CartScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.shopping_basket_outlined,
                      color: navBarGray,
                      size: 25.w,
                    ),
                    Text(
                      "Basket",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: navBarGray,
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const OrdersScreen(),
                    ),
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      color: navBarGray,
                      size: 25.w,
                    ),
                    Text(
                      "Profile",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w400,
                        fontSize: 10.sp,
                        color: navBarGray,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Padding shopListItem(String image) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 10.h),
      child: Container(
        decoration: BoxDecoration(color: formBackground, borderRadius: BorderRadius.circular(8.w)),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10.h, right: 10.h),
              child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.favorite_border_outlined,
                    color: secondaryGreen,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: SizedBox(
                  height: 90.h,
                  child: Image.asset(
                    image,
                    fit: BoxFit.fitWidth,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, top: 10.h),
              child: Flexible(
                  child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                    text: "Mr Freshly",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 10.sp,
                      color: mainBlack,
                    ),
                    children: [
                      TextSpan(
                        text: " Mini Crunch Donuts 12X85G 6Pack ",
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 10.sp,
                          color: mainBlack,
                        ),
                      )
                    ]),
              )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h, bottom: 10.h, top: 10.h),
              child: Row(
                children: [
                  Text(
                    "£15",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 11.sp,
                      color: mainPurple,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "DONUT4",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w500,
                      fontSize: 9.sp,
                      color: realGreen,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Column categorySection() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Categories",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 18.sp,
                  color: mainBlack,
                ),
              ),
              Text(
                "See All",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.sp,
                  color: secondaryGreen,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 70.h,
          width: 1.sw,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.w),
                child: Image.asset("assets/img/home/category_1.png"),
              ),
              Image.asset("assets/img/home/category_2.png"),
              Image.asset("assets/img/home/category_3.png"),
              Image.asset("assets/img/home/category_4.png"),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20.w, top: 20.h),
          child: SizedBox(
            height: 35.h,
            width: 1.sw,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: Container(
                    decoration: BoxDecoration(color: mainPurple, borderRadius: BorderRadius.circular(5.w)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Candy & Chocolate",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: mainGreen), borderRadius: BorderRadius.circular(5.w)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Drinks",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: mainBlack,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.w),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: mainGreen), borderRadius: BorderRadius.circular(5.w)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Text(
                        "Snacks and Food",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w500,
                          fontSize: 14.sp,
                          color: mainBlack,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  PreferredSize appBar() {
    return PreferredSize(
        preferredSize: Size(1.sw, 120.h),
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: SizedBox(
            width: 1.sw,
            height: 60.h,
            child: Stack(children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.w),
                  child: GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                        height: 60.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Location",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                                color: secondaryBlack,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 5.h),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on_rounded,
                                    color: mainPurple,
                                  ),
                                  Text(
                                    "United Kingdom | GBP £",
                                    style: GoogleFonts.inter(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14.sp,
                                      color: mainBlack,
                                    ),
                                  ),
                                  Icon(Icons.keyboard_arrow_down_rounded, color: mainBlack),
                                ],
                              ),
                            )
                          ],
                        )),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.w),
                  child: Container(
                      width: 36.w,
                      height: 36.w,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: formBackground),
                      child: Icon(
                        Icons.notification_important,
                        size: 25.w,
                      )),
                ),
              )
            ]),
          ),
        ));
  }

  Padding buildStep() {
    return Padding(
      padding: EdgeInsets.only(top: 10.h),
      child: SizedBox(
        width: 1.sw,
        child: Stack(
          children: [
            Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 5; i++)
                      Padding(
                        padding: EdgeInsets.all(3.w),
                        child: Container(
                          width: 8.w,
                          height: 8.w,
                          decoration: BoxDecoration(shape: BoxShape.circle, color: i == 2 ? secondaryGreen : mainGreen),
                        ),
                      ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  SizedBox sliderSection() {
    return SizedBox(
      width: 1.sw,
      height: 180.h,
      child: PageView(
        children: [
          sliderContent(),
          sliderContent(),
        ],
      ),
    );
  }

  Padding searchSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Flexible(
            child: TextFormField(
              cursorColor: mainBlack,
              decoration: InputDecoration(
                  prefixIcon: Padding(
                    padding: EdgeInsets.only(left: 10.w, right: 10.w),
                    child: Icon(
                      Icons.search,
                      color: secondaryGreen,
                    ),
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 2,
                    minHeight: 2,
                  ),
                  border: InputBorder.none,
                  hintText: "Search",
                  hintStyle: GoogleFonts.inter(
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                    color: secondaryBlack,
                  ),
                  enabledBorder:
                      OutlineInputBorder(borderRadius: BorderRadius.circular(8.w), borderSide: BorderSide.none),
                  fillColor: formBackground,
                  filled: true,
                  contentPadding: EdgeInsets.only(left: 10.w)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Container(
              width: 44.w,
              height: 44.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.w),
                color: mainPurple,
              ),
              child: const Icon(
                Icons.filter_alt_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }

  Padding sliderContent() {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, top: 15.h, right: 20.w),
      child: Container(
        width: 1.sw,
        height: 180.h,
        decoration: BoxDecoration(color: formBackground, borderRadius: BorderRadius.circular(8.w)),
        child: Padding(
          padding: EdgeInsets.only(left: 25.w, top: 20.h, bottom: 20.h, right: 25.w),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cherry Up",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: mainBlack,
                    ),
                  ),
                  Text(
                    "Depression down!",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                      fontSize: 12.sp,
                      color: secondaryBlack,
                    ),
                  ),
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainPurple,
                      elevation: 0,
                      minimumSize: Size.zero, // Set this
                      padding: EdgeInsets.zero,
                      overlayColor: Colors.transparent,
                      fixedSize: Size(90.w, 30.h),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.w)),
                    ),
                    child: Text(
                      "Shop Now",
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              SizedBox(
                height: 180.h,
                child: Image.asset(
                  "assets/img/cart/cart_item_4.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
