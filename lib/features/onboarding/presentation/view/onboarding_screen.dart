import 'package:candy_cargo/common/constants/colors.dart';
import 'package:candy_cargo/features/login/presentation/view/login_screen.dart';
import 'package:candy_cargo/features/onboarding/presentation/bloc/onboarding_bloc.dart';
import 'package:candy_cargo/features/onboarding/presentation/bloc/onboarding_event.dart';
import 'package:candy_cargo/features/onboarding/presentation/bloc/onboarding_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [onBoardingPage(pageController, context), buildStepBar(pageController, context)],
        ),
      ),
    );
  }

  SizedBox buildStepBar(PageController pageController, BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 100.h,
      child: Stack(
        children: [
          Align(
              alignment: Alignment.center,
              child: BlocBuilder<OnboardingBloc, OnboardingState>(builder: (context, state) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (var i = 0; i < 3; i++)
                      Padding(
                        padding: EdgeInsets.all(3.w),
                        child: Container(
                          width: i == state.currentPage ? 14.w : 10.w,
                          height: i == state.currentPage ? 14.w : 10.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: i == state.currentPage ? mainPurple : mainGreen),
                        ),
                      ),
                  ],
                );
              })),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: BlocBuilder<OnboardingBloc, OnboardingState>(builder: (context, state) {
                  return GestureDetector(
                    onTap: () {
                      if (state.currentPage == 2) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      }
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                      width: 50.w,
                      height: 50.w,
                      decoration: BoxDecoration(shape: BoxShape.circle, color: mainPurple),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  );
                })),
          )
        ],
      ),
    );
  }

  Expanded onBoardingPage(PageController pageContreller, BuildContext context) {
    return Expanded(
      child: BlocBuilder<OnboardingBloc, OnboardingState>(builder: (context, state) {
        return PageView(
          controller: pageContreller,
          onPageChanged: (index) {
            BlocProvider.of<OnboardingBloc>(context).add(PageChangedEvent(index));
          },
          children: [
            onBoardingPageContent("assets/img/onboarding/onboarding_1.png", "List Products"),
            onBoardingPageContent("assets/img/onboarding/onboarding_3.png", "Order is so easy now!"),
            onBoardingPageContent("assets/img/onboarding/onboarding_2.png", "Track your orders")
          ],
        );
      }),
    );
  }

  Column onBoardingPageContent(String image, String topString) {
    return Column(
      children: [
        SizedBox(
          height: 403.h,
          width: 1.sw,
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50.h),
          child: Text(
            topString,
            style: GoogleFonts.inter(fontWeight: FontWeight.w600, fontSize: 24.sp, color: mainBlack),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20.h, left: 15.w, right: 15.w),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
            textAlign: TextAlign.center,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: secondaryBlack,
            ),
          ),
        )
      ],
    );
  }
}
