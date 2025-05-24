import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/brand/brand_card.dart';
import 'package:e_commerce_app/common/widgets/products/sortable_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AppBrandProducts extends StatelessWidget {
  const AppBrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppAppbar(title: Text('Nike')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Brand details
              AppBrandCard(showBorder: true),
              SizedBox(height: AppSizes.spaceBetweenSections),

              AppSortableProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
