import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/common/widgets/circular_container.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/primary_header_container.dart';
import '../../../../common/widgets/rounded_image.dart';
import '../../../../common/widgets/search_container.dart';
import '../../../../common/widgets/section_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  AppHomeAppbar(),

                  const SizedBox(height: AppSizes.spaceBetweenSections),

                  //Searchbar
                  AppSearchContainer(text: 'Search in store'),
                  const SizedBox(height: AppSizes.spaceBetweenSections),

                  //Categories
                  Padding(
                    padding: const EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        AppSectionHeading(
                          title: 'Popular Categories',
                          buttonTitle: 'buttonTitle',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        const SizedBox(height: AppSizes.spaceBetweenItems),

                        //Category items
                        HomeCategory(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //Body
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(viewportFraction: 1),
                    items: [
                      AppRoundedImage(imageUrl: AppImages.promoBanner1),
                      AppRoundedImage(imageUrl: AppImages.promoBanner2),
                      AppRoundedImage(imageUrl: AppImages.promoBanner3),
                      AppRoundedImage(imageUrl: AppImages.promoBanner4),
                      AppRoundedImage(imageUrl: AppImages.promoBanner5),
                      AppRoundedImage(imageUrl: AppImages.promoBanner6),
                      AppRoundedImage(imageUrl: AppImages.promoBanner7),
                      AppRoundedImage(imageUrl: AppImages.promoBanner8),
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 8; i++)
                        const AppCircularContainer(
                          width: 10,
                          height: 10,
                          margin: EdgeInsets.only(right: 10),
                          backgroundColor: Colors.green,
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
