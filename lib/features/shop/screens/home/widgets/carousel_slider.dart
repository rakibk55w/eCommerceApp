import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_app/features/shop/controllers/home_controller.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/circular_container.dart';
import '../../../../../common/widgets/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class AppCarouselSlider extends StatelessWidget {
  const AppCarouselSlider({super.key, required this.banners});

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) {
              controller.updatePageIndicator(index);
            },
          ),
          items: banners.map((url) => AppRoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: AppSizes.spaceBetweenItems),
        Obx(() {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (int i = 0; i < banners.length; i++)
                AppCircularContainer(
                  width: 10,
                  height: 10,
                  margin: const EdgeInsets.only(right: 10),
                  backgroundColor:
                      controller.carouselCurrentIndex.value == i
                          ? AppColors.primary
                          : AppColors.grey,
                ),
            ],
          );
        }),
      ],
    );
  }
}
