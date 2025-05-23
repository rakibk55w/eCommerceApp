import 'package:flutter/material.dart';

import '../../../../../common/widgets/cart/cart_add_remove_button.dart';
import '../../../../../common/widgets/cart/cart_item.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/sizes.dart';

class AppCartItems extends StatelessWidget {
  const AppCartItems({super.key, this.showAddRemoveButton = true, this.allowScroll = true});

  final bool showAddRemoveButton;
  final bool allowScroll;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      shrinkWrap: true,
      physics: allowScroll ? AlwaysScrollableScrollPhysics() : NeverScrollableScrollPhysics(),
      separatorBuilder:
          (_, __) =>
      const SizedBox(height: AppSizes.spaceBetweenSections),
      itemBuilder:
          (_, index) => Column(
        children: [
          //Cart item
          const AppCartItem(),

          //Add remove button with total price
          if(showAddRemoveButton)
          const SizedBox(height: AppSizes.spaceBetweenItems),

          if(showAddRemoveButton)
          const Row(
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
    );
  }
}
