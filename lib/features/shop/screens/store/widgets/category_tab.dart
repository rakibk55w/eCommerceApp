import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_card_vertical.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brand/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Brands
              const AppBrandShowcase(
                images: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1,
                ],
              ),
              const AppBrandShowcase(
                images: [
                  AppImages.productImage3,
                  AppImages.productImage2,
                  AppImages.productImage1,
                ],
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              //Products
              AppSectionHeading(title: 'You might like', onPressed: () {}),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              AppGridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const AppProductCardVertical(),
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),
            ],
          ),
        ),
      ],
    );
  }
}
