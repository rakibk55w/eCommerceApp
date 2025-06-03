import 'package:e_commerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class AppSocialFooter extends StatelessWidget {
  const AppSocialFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //Google button
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () => controller.googleSignIn(),
            icon: const Image(
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
              image: AssetImage(AppImages.google),
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBetweenItems),

        //Facebook button
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: AppSizes.iconMd,
              width: AppSizes.iconMd,
              image: AssetImage(AppImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
