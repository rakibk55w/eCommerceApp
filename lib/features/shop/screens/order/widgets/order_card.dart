import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class AppOrderCard extends StatelessWidget {
  const AppOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return AppRoundedContainer(
      showBorder: true,
      backgroundColor: dark ? AppColors.dark : AppColors.light,
      padding: EdgeInsets.all(AppSizes.md),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Row 1
          Row(
            children: [
              //Icon
              Icon(Iconsax.ship),
              SizedBox(width: AppSizes.spaceBetweenItems / 2),

              //Status and Date
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Processing',
                      style: Theme.of(context).textTheme.bodyLarge!.apply(
                        color: AppColors.primary,
                        fontWeightDelta: 1,
                      ),
                    ),
                    Text(
                      '07 Nov, 2024',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ],
                ),
              ),

              //Details icon
              IconButton(
                onPressed: () {},
                icon: Icon(Iconsax.arrow_right_34, size: AppSizes.iconSm),
              ),
            ],
          ),

          SizedBox(height: AppSizes.spaceBetweenItems),

          //Row 2
          Row(
            children: [
              Expanded(
                child: Row(
                  children: [
                    //Icon
                    Icon(Iconsax.tag),
                    SizedBox(width: AppSizes.spaceBetweenItems / 2),

                    //Status and Date
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Order',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '[#256f2]',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    //Icon
                    Icon(Iconsax.calendar),
                    SizedBox(width: AppSizes.spaceBetweenItems / 2),

                    //Status and Date
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Shipping Date',
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                          Text(
                            '02 Feb, 2025',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
