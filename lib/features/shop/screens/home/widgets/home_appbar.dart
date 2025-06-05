import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/utils/loaders/shimmer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/icons/cart_menu_icon.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppHomeAppbar extends StatelessWidget {
  const AppHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());

    return AppAppbar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.homeAppbarTitle,
            style: Theme.of(
              context,
            ).textTheme.labelMedium!.apply(color: AppColors.grey),
          ),
          Obx(() {
            if (controller.profileLoading.value) {
              return const AppShimmerEffect(width: 80, height: 15);
            } else {
              return Text(
                controller.user.value.fullName,
                style: Theme.of(
                  context,
                ).textTheme.headlineSmall!.apply(color: AppColors.white),
              );
            }
          }),
        ],
      ),
      actions: [AppCartCounterIcon(iconColor: AppColors.white)],
    );
  }
}
