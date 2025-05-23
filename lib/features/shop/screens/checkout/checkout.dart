import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/cart/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Items in cart
              const AppCartItems(showAddRemoveButton: false),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              //Coupon textfield
              const AppCouponCode(),
              const SizedBox(height: AppSizes.spaceBetweenSections),
            ],
          ),
        ),
      ),
    );
  }
}
