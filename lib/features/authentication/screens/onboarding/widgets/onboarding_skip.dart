import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../controllers/onboarding/onboarding_controller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Obx(() {
      if (controller.currentPageIndex.value == 2) {
        return const SizedBox.shrink(); // Invisible and takes no space
      }

      return Positioned(
        top: AppDeviceUtils.getAppbarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            controller.skipPage();
          },
          child: const Text("Skip"),
        ),
      );
    });
  }
}