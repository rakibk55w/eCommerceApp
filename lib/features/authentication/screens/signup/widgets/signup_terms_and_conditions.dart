import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupTermsAndConditions extends StatelessWidget {
  const SignupTermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    final bool dark = AppHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        const SizedBox(width: AppSizes.spaceBetweenItems),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${AppTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${AppTexts.privacyPolicy} ',
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: dark ? AppColors.white : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? AppColors.white : AppColors.primary,
                ),
              ),
              TextSpan(
                text: '${AppTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text: '${AppTexts.termsOfUse} ',
                style: Theme.of(context).textTheme.bodyMedium?.apply(
                  color: dark ? AppColors.white : AppColors.primary,
                  decoration: TextDecoration.underline,
                  decorationColor: dark ? AppColors.white : AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
