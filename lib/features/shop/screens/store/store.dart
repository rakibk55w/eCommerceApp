import 'package:e_commerce_app/common/widgets/appbar/appbar.dart';
import 'package:e_commerce_app/common/widgets/icons/cart_menu_icon.dart';
import 'package:e_commerce_app/common/widgets/layout/grid_layout.dart';
import 'package:e_commerce_app/common/widgets/texts/section_heading.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/enums.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/rounded_container.dart';
import '../../../../common/widgets/custom_shapes/search_container.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/texts/brand_title_text_with_verified_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppAppbar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [AppCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? AppColors.black : AppColors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsets.all(AppSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    //Search bar
                    SizedBox(height: AppSizes.spaceBetweenItems),
                    AppSearchContainer(
                      text: 'Search in Store',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    SizedBox(height: AppSizes.spaceBetweenSections),

                    //Featured brands
                    AppSectionHeading(
                      title: 'Featured Brands',
                      onPressed: () {},
                    ),
                    SizedBox(height: AppSizes.spaceBetweenItems / 1.5),

                    AppGridLayout(
                      itemCount: 4,
                      mainAxisExtent: 80,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: AppRoundedContainer(
                            padding: EdgeInsets.all(AppSizes.sm),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              children: [
                                //Icon
                                Flexible(
                                  child: AppCircularImage(
                                    image: AppImages.clothIcon,
                                    backgroundColor: Colors.transparent,
                                    overlayColor:
                                        dark ? AppColors.white : AppColors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: AppSizes.spaceBetweenItems / 2,
                                ),

                                //Text
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      AppBrandTitleTextWithVerifiedIcon(
                                        title: 'Nike',
                                        brandTextSize: TextSizes.large,
                                      ),
                                      Text(
                                        '256 products',
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            Theme.of(
                                              context,
                                            ).textTheme.labelMedium,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
