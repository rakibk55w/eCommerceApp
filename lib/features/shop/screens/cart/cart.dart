import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/cart/cart_add_remove_button.dart';
import '../../../../common/widgets/cart/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppAppbar(
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.all(AppSizes.defaultSpace),
      child: ElevatedButton(onPressed: (){}, child: const Text('Checkout \$250.0')),),
      body: Padding(
        padding: const EdgeInsets.all(AppSizes.defaultSpace),
        child: ListView.separated(
          itemCount: 4,
          shrinkWrap: true,
          separatorBuilder:
              (_, __) =>
                  const SizedBox(height: AppSizes.spaceBetweenSections),
          itemBuilder:
              (_, index) => const Column(
                children: [
                  AppCartItem(),
                  SizedBox(height: AppSizes.spaceBetweenItems),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 70),
                          //Add remove buttons
                          AppProductQuantityWithAddRemoveButton(),
                        ],
                      ),
                      //Product price
                      AppProductPriceText(price: '250'),
                    ],
                  ),
                ],
              ),
        ),
      ),
    );
  }
}

