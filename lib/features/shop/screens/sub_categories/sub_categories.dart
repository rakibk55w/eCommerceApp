import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/images/rounded_image.dart';
import 'package:e_commerce_app/common/widgets/products/product_card_horizontal.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppbar(title: const Text('Sports'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              //Banner
              const AppRoundedImage(
                imageUrl: AppImages.promoBanner4,
                applyImageRadius: true,
                width: double.infinity,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              // Sub categories
              Column(
                children: [
                  //Heading
                  AppSectionHeading(title: 'Sports shirts', onPressed: (){},),
                  const SizedBox(height: AppSizes.spaceBetweenItems / 2,),

                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) => const SizedBox(width: AppSizes.spaceBetweenItems,),
                        itemBuilder: (context, index) => const AppProductCardHorizontal()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
