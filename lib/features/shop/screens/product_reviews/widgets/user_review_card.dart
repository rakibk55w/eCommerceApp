import 'package:e_commerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/products/rating_bar_indicator.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../utils/constants/colors.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage(AppImages.userProfileImage1),
                ),
                const SizedBox(width: AppSizes.spaceBetweenItems),
                Text('John Doe', style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),

        //Review
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const AppRatingBarIndicator(rating: 4),
            const SizedBox(width: AppSizes.spaceBetweenItems),
            Text('01 Nov, 2024', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),

        const SizedBox(height: AppSizes.spaceBetweenItems),
        const ReadMoreText(
          'The product is very good. Delivery was very fast and i received the product in very good condition. Recommend it to everyone.',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: ' Show less',
          trimCollapsedText: ' Show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: AppColors.primary,
          ),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems),

        //Company review
        AppRoundedContainer(
          backgroundColor: dark ? AppColors.darkerGrey : AppColors.grey,
          child: Padding(
            padding: const EdgeInsets.all(AppSizes.md),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Owner Store',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      '02 Nov, 2024',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.spaceBetweenItems),
                const ReadMoreText(
                  'The product is very good. Delivery was very fast and i received the product in very good condition. Recommend it to everyone.',
                  trimLines: 2,
                  trimMode: TrimMode.Line,
                  trimExpandedText: ' Show less',
                  trimCollapsedText: ' Show more',
                  moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                  lessStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: AppSizes.spaceBetweenSections),
      ],
    );
  }
}
