import 'package:e_commerce_app/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../common/widgets/login_signup/social_footer.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              //First name text field
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),

              const SizedBox(width: AppSizes.spaceBetweenInputFields),

              //Last name text field
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: AppTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Username text field
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Email text field
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Phone number text field
          TextFormField(
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Password text field
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Terms and conditions checkbox
          const SignupTermsAndConditions(),

          const SizedBox(height: AppSizes.spaceBetweenSections),

          //Sign up button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Get.to(() => const VerifyEmailScreen());
              },
              child: const Text(AppTexts.createAccount),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenSections),

          //Divider
          AppFormDivider(dividerText: AppTexts.orSignUpWith.capitalize!),

          const SizedBox(height: AppSizes.spaceBetweenSections),

          //Signup footer
          const AppSocialFooter(),
        ],
      ),
    );
  }
}
