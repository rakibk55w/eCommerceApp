import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: AppAppbar(title: Text('Reviews & Ratings'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ratings & reviews are verified and are from people who have purchased the product'),
              SizedBox(height: AppSizes.spaceBetweenItems,),

              //Overall product rating
              Row(children: [
                Expanded(flex: 3, child: Text('4.8', style: Theme.of(context).textTheme.displayLarge,)),
                Expanded(
                  flex: 7,
                  child: Column(
                    children: [
                      const AppRatingProgressIndicator(text: '5', value: 1.0,),
                      const AppRatingProgressIndicator(text: '4', value: 0.8,),
                      const AppRatingProgressIndicator(text: '3', value: 0.6,),
                      const AppRatingProgressIndicator(text: '2', value: 0.4,),
                      const AppRatingProgressIndicator(text: '1', value: 0.2,),
                    ],
                  ),
                ),
              ],),
            ],
          ),
        ),
      ),
    );
  }
}