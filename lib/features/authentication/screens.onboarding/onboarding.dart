import 'package:e_commerce_app/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:e_commerce_app/features/authentication/screens.onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_commerce_app/features/authentication/screens.onboarding/widgets/onboarding_next_button.dart';
import 'package:e_commerce_app/features/authentication/screens.onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app/features/authentication/screens.onboarding/widgets/onboarding_skip.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          //Scrollable pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: [
              const OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              const OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              const OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              ),
            ],
          ),
          
          //Skip button
          const OnBoardingSkip(),
          
          //Dot navigation smoothpage indicator
          const OnboardingDotNavigation(),
          
          //Circular button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}
