import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';

class AppBillingAmountSection extends StatelessWidget {
  const AppBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$250.0', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems / 2),

        //Shipping fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$10.0', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems / 2),

        //Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$5.0', style: Theme.of(context).textTheme.bodyMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems / 2),

        //Order total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            Text('\$265.0', style: Theme.of(context).textTheme.titleMedium,),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems / 2),
      ],
    );
  }
}
