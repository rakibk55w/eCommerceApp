import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class AppCategoryTab extends StatelessWidget {
  const AppCategoryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppSizes.defaultSpace),
      child: Column(
        children: [
          //Brands
          AppBrandShowcase(
            images: [
              AppImages.productImage3,
              AppImages.productImage2,
              AppImages.productImage1,
            ],
          ),

          //Products
        ],
      ),
    );
  }
}
