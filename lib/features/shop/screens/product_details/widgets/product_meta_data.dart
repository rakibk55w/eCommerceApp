import 'package:e_commerce_app/common/widgets/images/circular_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AppProductMetaData extends StatelessWidget {
  const AppProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //Price and Sale price
        Row(
          children: [
            //Sale tag
            AppRoundedContainer(
              radius: AppSizes.sm,
              backgroundColor: AppColors.secondary.withAlpha(
                (255 * 0.8).toInt(),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: AppSizes.sm,
                vertical: AppSizes.xs,
              ),
              child: Text(
                '25%',
                style: Theme.of(
                  context,
                ).textTheme.labelLarge!.apply(color: AppColors.black),
              ),
            ),

            const SizedBox(width: AppSizes.spaceBetweenItems),

            //Price
            const AppProductPriceText(price: '250', lineThrough: true),
            const SizedBox(width: AppSizes.spaceBetweenItems),
            const AppProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(width: AppSizes.spaceBetweenItems / 1.5),

        //Title
        const AppProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(width: AppSizes.spaceBetweenItems / 1.5),

        //Stock status
        Row(
          children: [
            const AppProductTitleText(title: 'Status'),
            const SizedBox(width: AppSizes.spaceBetweenItems),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(width: AppSizes.spaceBetweenItems / 1.5),

        //Brand
        Row(
          children: [
            AppCircularImage(
              image: AppImages.shoeIcon,
              width: 32,
              height: 32,
              overlayColor: dark ? AppColors.white : AppColors.black,
            ),
            const AppBrandTitleTextWithVerifiedIcon(
              title: 'Nike',
              brandTextSize: TextSizes.medium,
            ),
          ],
        ),
      ],
    );
  }
}
