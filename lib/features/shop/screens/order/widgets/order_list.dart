import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import 'order_card.dart';

class AppOrderListItems extends StatelessWidget {
  const AppOrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      separatorBuilder: (_, __) => SizedBox(height: AppSizes.spaceBetweenItems),
      itemBuilder:
          (_, index) => AppOrderCard(),
    );
  }
}