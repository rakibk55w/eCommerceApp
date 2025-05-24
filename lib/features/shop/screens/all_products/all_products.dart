import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/products/product_card_vertical.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(title: Text('Popular Products'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
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
                          (option) => DropdownMenuItem(
                            value: option,
                            child: Text(option),
                          ),
                        )
                        .toList(),
                onChanged: (value) {},
                decoration: InputDecoration(prefixIcon: Icon(Iconsax.sort)),
              ),

              SizedBox(height: AppSizes.spaceBetweenSections),

              //Products
              AppGridLayout(
                itemCount: 10,
                itemBuilder: (_, index) => AppProductCardVertical(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
