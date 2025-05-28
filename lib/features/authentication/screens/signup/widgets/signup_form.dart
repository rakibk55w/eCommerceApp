import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../../common/widgets/login_signup/social_footer.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/validators/validation.dart';
import '../../../controllers/signup/signup_controller.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              //First name text field
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) => AppValidator.validateEmptyText('First name', value),
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
                  controller: controller.lastName,
                  validator: (value) => AppValidator.validateEmptyText('Last name', value),
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
            controller: controller.username,
            validator: (value) => AppValidator.validateEmptyText('Username', value),
            expands: false,
            decoration: const InputDecoration(
              labelText: AppTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Email text field
          TextFormField(
            controller: controller.email,
            validator: (value) => AppValidator.validateEmail(value),
            decoration: const InputDecoration(
              labelText: AppTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Phone number text field
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) => AppValidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
              labelText: AppTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),

          const SizedBox(height: AppSizes.spaceBetweenInputFields),

          //Password text field
          TextFormField(
            controller: controller.password,
            validator: (value) => AppValidator.validatePassword(value),
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
                Get.to(() => controller.signup());
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
