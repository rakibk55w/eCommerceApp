import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/sizes.dart';
import '../../utils/constants/text_strings.dart';
import '../../utils/helpers/helper_functions.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.onPressed,
  });

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppbarHeight * 2,
          child: Column(
            children: [
              //image
              Image(
                image: AssetImage(image),
                width: AppHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              //title subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBetweenItems),
              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AppSizes.spaceBetweenSections),

              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed,
                  child: const Text(AppTexts.cont),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
