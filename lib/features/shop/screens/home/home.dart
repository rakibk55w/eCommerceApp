import 'package:e_commerce_app/features/shop/screens/home/widgets/carousel_slider.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:e_commerce_app/features/shop/screens/home/widgets/home_category.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Header
            const AppPrimaryHeaderContainer(
              child: Column(
                children: [
                  //Appbar
                  AppHomeAppbar(),

                  SizedBox(height: AppSizes.spaceBetweenSections),

                  //Searchbar
                  AppSearchContainer(text: 'Search in store'),
                  SizedBox(height: AppSizes.spaceBetweenSections),

                  //Categories
                  Padding(
                    padding: EdgeInsets.only(left: AppSizes.defaultSpace),
                    child: Column(
                      children: [
                        //Heading
                        AppSectionHeading(
                          title: 'Popular Categories',
                          buttonTitle: 'buttonTitle',
                          showActionButton: false,
                          textColor: AppColors.white,
                        ),
                        SizedBox(height: AppSizes.spaceBetweenItems),

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
                  //Carousel slider
                  const AppCarouselSlider(
                    banners: [
                      AppImages.promoBanner1,
                      AppImages.promoBanner2,
                      AppImages.promoBanner3,
                      AppImages.promoBanner4,
                      AppImages.promoBanner5,
                      AppImages.promoBanner6,
                      AppImages.promoBanner7,
                      AppImages.promoBanner8,
                    ],
                  ),

                  const SizedBox(height: AppSizes.spaceBetweenSections),

                  //Heading
                  AppSectionHeading(title: 'Popular Products', onPressed: (){},),
                  const SizedBox(height: AppSizes.spaceBetweenItems),

                  //Popular products
                  AppGridLayout(itemCount: 4, itemBuilder: (_ , index ) { return const AppProductCardVertical(); },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

