import 'package:e_commerce_app/common/widgets/products/product_card_vertical.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/sizes.dart';
import '../layout/grid_layout.dart';

class AppSortableProducts extends StatelessWidget {
  const AppSortableProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Dropdown
        DropdownButtonFormField(
          items:
              [
                    'Name',
                    'Highest Price',
                    'Lowest Price',
                    'Sale',
                    'Newest',
                    'Popularity',
                  ]
                  .map(
                    (option) =>
                        DropdownMenuItem(value: option, child: Text(option)),
                  )
                  .toList(),
          onChanged: (value) {},
          decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
        ),

        const SizedBox(height: AppSizes.spaceBetweenSections),

        //Products
        AppGridLayout(
          itemCount: 10,
          itemBuilder: (_, index) => const AppProductCardVertical(),
        ),
      ],
    );
  }
}
