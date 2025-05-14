import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/sizes.dart';
import '../../utils/device/device_utility.dart';
import '../../utils/helpers/helper_functions.dart';

class AppSearchContainer extends StatelessWidget {
  const AppSearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
      child: Container(
        width: AppDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(AppSizes.md),
        decoration: BoxDecoration(
          color:
              showBackground
                  ? (dark ? AppColors.dark : AppColors.light)
                  : Colors.transparent,
          borderRadius: BorderRadius.circular(AppSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: AppColors.grey) : null,
        ),
        child: Row(
          children: [
            Icon(icon, color: AppColors.darkerGrey),

            const SizedBox(width: AppSizes.spaceBetweenItems),

            Text(text, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}
