import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import '../custom_shapes/rounded_container.dart';
import 'brand_card.dart';

class AppBrandShowcase extends StatelessWidget {
  const AppBrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return AppRoundedContainer(
      showBorder: true,
      borderColor: AppColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.all(AppSizes.md),
      margin: const EdgeInsets.only(bottom: AppSizes.spaceBetweenItems),
      child: Column(
        children: [
          //Brand with product count
          const AppBrandCard(showBorder: false),

          const SizedBox(height: AppSizes.spaceBetweenItems,),

          //Brand top 3 products
          Row(
            children:
                images
                    .map((image) => brandTopProductImageWidget(image, context))
                    .toList(),
          ),
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Expanded(
      child: AppRoundedContainer(
        height: 100,
        backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image(fit: BoxFit.contain, image: AssetImage(image)),
      ),
    );
  }
}
