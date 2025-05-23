import 'package:e_commerce_app/common/widgets/custom_shapes/rounded_container.dart';
import 'package:e_commerce_app/common/widgets/success_screen/success_screen.dart';
import 'package:e_commerce_app/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:e_commerce_app/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/cart/coupon_widget.dart';
import '../../../../navigation_menu.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppAppbar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      //Checkout button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ElevatedButton(
          onPressed:
              () => Get.to(
                () => SuccessScreen(
                  image: AppImages.successfulPaymentIcon,
                  title: 'Payment Successful!',
                  subTitle: 'Your item will be shipped soon',
                  onPressed: () => Get.offAll(() => const NavigationMenu()),
                ),
              ),
          child: const Text('Checkout \$250.0'),
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

              //Billing section
              AppRoundedContainer(
                padding: const EdgeInsets.all(AppSizes.md),
                showBorder: true,
                backgroundColor: dark ? AppColors.black : AppColors.white,
                child: Column(
                  children: [
                    //Pricing
                    const AppBillingAmountSection(),
                    const SizedBox(height: AppSizes.spaceBetweenItems),

                    //Divider
                    const Divider(),
                    const SizedBox(height: AppSizes.spaceBetweenItems),

                    //Payment method
                    const AppBillingPaymentSection(),
                    const SizedBox(height: AppSizes.spaceBetweenItems),

                    //Address
                    const AppBillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
