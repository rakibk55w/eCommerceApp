import 'package:e_commerce_app/features/shop/screens/product_reviews/widgets/progress_indicator_and_rating.dart';
import 'package:flutter/material.dart';

class AppOverallProductRating extends StatelessWidget {
  const AppOverallProductRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
        ),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              AppRatingProgressIndicator(text: '5', value: 1.0),
              AppRatingProgressIndicator(text: '4', value: 0.8),
              AppRatingProgressIndicator(text: '3', value: 0.6),
              AppRatingProgressIndicator(text: '2', value: 0.4),
              AppRatingProgressIndicator(text: '1', value: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
