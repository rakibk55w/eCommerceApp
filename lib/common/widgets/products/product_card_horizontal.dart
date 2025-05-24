import 'package:e_commerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../styles/card_shadow.dart';
import '../icons/circular_icon.dart';

class AppProductCardHorizontal extends StatelessWidget {
  const AppProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.softGrey,
      ),
      child: Row(
        children: [
          //Thumbnail
          AppRoundedContainer(
            height: 120,
            padding: EdgeInsets.all(AppSizes.sm),
            backgroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                SizedBox(
                  height: 120,
                  width: 120,
                  child: AppRoundedImage(
                    imageUrl: AppImages.productImage1,
                    applyImageRadius: true,
                  ),
                ),

                //Sale tag
                Positioned(
                  top: 12,
                  child: AppRoundedContainer(
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
                ),

                //Favourite icon button
                const Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                ),


              ],
            ),
          ),

          //Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(top: AppSizes.sm, left: AppSizes.sm),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppProductTitleText(title: 'Green Nike Half Sleeves Shirt', smallSize: true,),
                      SizedBox(height: AppSizes.spaceBetweenItems / 2,),
                      AppBrandTitleTextWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  Spacer(),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price text
                      Flexible(child: AppProductPriceText(price: '250.0')),

                      //Add to cart button
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppSizes.cardRadiusMd),
                            bottomRight: Radius.circular(AppSizes.productImageRadius),
                          ),
                        ),
                        child: const SizedBox(
                          width: AppSizes.iconLg * 1.2,
                          height: AppSizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(Iconsax.add, color: AppColors.white),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
