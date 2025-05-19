import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges_widget.dart';
import '../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return AppCurvedEdgeWidget(
      child: Container(
        color: dark ? AppColors.darkerGrey : AppColors.light,
        child: Stack(
          children: [
            //Main large image
            const SizedBox(
              height: 400,
              child: Padding(
                padding: EdgeInsets.all(AppSizes.productImageRadius * 2),
                child: Center(
                  child: Image(image: AssetImage(AppImages.productImage1)),
                ),
              ),
            ),

            //Image slider
            Positioned(
              right: 0,
              left: AppSizes.defaultSpace,
              bottom: 30,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 4,
                  separatorBuilder:
                      (_, __) =>
                          const SizedBox(width: AppSizes.spaceBetweenItems),
                  itemBuilder:
                      (_, index) => AppRoundedImage(
                        width: 80,
                        border: Border.all(color: AppColors.primary),
                        padding: EdgeInsets.all(AppSizes.sm),
                        backgroundColor:
                            dark ? AppColors.dark : AppColors.white,
                        imageUrl: AppImages.productImage3,
                      ),
                ),
              ),
            ),

            //Appbar icons
            AppAppbar(
              showBackArrow: true,
              actions: [
                AppCircularIcon(icon: Iconsax.heart5, color: Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
