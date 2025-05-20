import 'package:e_commerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/chips/choice_chip.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class AppProductAttributes extends StatelessWidget {
  const AppProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        //Selected attribute pricing and description
        AppRoundedContainer(
          padding: const EdgeInsets.all(AppSizes.md),
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Column(
            children: [
              //Title, price and stock status
              Row(
                children: [
                  const AppSectionHeading(
                    title: 'Variation',
                    showActionButton: false,
                  ),
                  const SizedBox(width: AppSizes.spaceBetweenItems),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const AppProductTitleText(
                            title: 'Price',
                            smallSize: true,
                          ),
                          const SizedBox(width: AppSizes.spaceBetweenItems),

                          const AppProductPriceText(
                            price: '250',
                            lineThrough: true,
                          ),

                          const SizedBox(width: AppSizes.spaceBetweenItems),

                          //Sale price
                          const AppProductPriceText(price: '175'),
                        ],
                      ),

                      //Stock
                      Row(
                        children: [
                          const AppProductTitleText(
                            title: 'Stock',
                            smallSize: true,
                          ),
                          const SizedBox(width: AppSizes.spaceBetweenItems),
                          Text(
                            'In Stock',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              //Variation Description
              const AppProductTitleText(
                title:
                    'This is the description of the product. It can be max 4 lines',
                smallSize: true,
                maxLines: 4,
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems),

        //Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Colors', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 4,
              children: [
                AppChoiceChip(
                  text: 'Green',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Blue',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'Yellow',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppSectionHeading(title: 'Size', showActionButton: false),
            const SizedBox(height: AppSizes.spaceBetweenItems / 2),
            Wrap(
              spacing: 8,
              children: [
                AppChoiceChip(
                  text: 'EU 34',
                  selected: true,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'EU 36',
                  selected: false,
                  onSelected: (value) {},
                ),
                AppChoiceChip(
                  text: 'EU 38',
                  selected: false,
                  onSelected: (value) {},
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
