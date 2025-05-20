import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:e_commerce_app/features/shop/screens/product_details/widgets/rating_share_widget.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';

import '../../../../utils/constants/sizes.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product image slider
            const AppProductImageSlider(),

            //Product details
            Padding(
              padding: EdgeInsets.only(
                right: AppSizes.defaultSpace,
                left: AppSizes.defaultSpace,
                bottom: AppSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  //Rating and Share
                  const AppRatingAndShare(),

                  //Price, Title. Stock, Brand
                  const AppProductMetaData(),

                  //Attributes
                  const AppProductAttributes(),
                  const SizedBox(height: AppSizes.spaceBetweenSections),

                  //Checkout button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenSections),

                  //Description
                  const AppSectionHeading(
                    title: 'Description',
                    showActionButton: false,
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenItems),
                  ReadMoreText(
                    'This is the product description for Blue Nike Sleeve-less vests. There are more things that can be added for description. Lorem ipsum and other stuff',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Show less',
                    moreStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                    lessStyle: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  //Reviews
                  const Divider(),
                  const SizedBox(height: AppSizes.spaceBetweenItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppSectionHeading(title: 'Reviews (199)', showActionButton: false),
                      IconButton(icon: const Icon(Iconsax.arrow_right_3, size: 18,), onPressed: (){}, )
                    ],
                  ),
                  const SizedBox(height: AppSizes.spaceBetweenSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
