import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/brand/brand_products.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/brand/brand_card.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppbar(title: Text('Brand'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Heading
              const AppSectionHeading(title: 'Brands'),
              const SizedBox(height: AppSizes.spaceBetweenItems),

              //Brands
              AppGridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder:
                    (context, index) => AppBrandCard(
                      showBorder: true,
                      onTap: () => Get.to(() => const AppBrandProducts()),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
