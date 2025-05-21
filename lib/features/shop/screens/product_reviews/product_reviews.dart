import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/rating_bar_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: const AppAppbar(
        title: Text('Reviews & Ratings'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings & reviews are verified and are from people who have purchased the product',
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              //Overall product rating
              const AppOverallProductRating(),
              const AppRatingBarIndicator(rating: 4.8),
              Text('12,611', style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              //User reviews list
              const UserReviewCard(),
              //
            ],
          ),
        ),
      ),
    );
  }
}
