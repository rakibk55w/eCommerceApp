import 'package:e_commerce_app/features/authentication/controllers/login/login_controller.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:e_commerce_app/features/authentication/screens/signup/signup.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class AppLoginForm extends StatelessWidget {
  const AppLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());

    return Form(
      key: controller.loginFormKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppSizes.spaceBetweenSections,
        ),
        child: Column(
          children: [
            //Email field
             TextFormField(
                controller: controller.email,
                validator: (value) => AppValidator.validateEmail(value),
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: AppTexts.email,
                ),
              ),

            const SizedBox(height: AppSizes.spaceBetweenInputFields),

            //Password field
            Obx(
              () => TextFormField(
                controller: controller.password,
                validator:
                    (value) =>
                        AppValidator.validateEmptyText('Password', value),
                obscureText: controller.hidePassword.value,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Iconsax.password_check),
                  labelText: AppTexts.password,
                  suffixIcon: IconButton(
                    onPressed: () => controller.hidePassword.toggle(),
                    icon: Icon(
                      controller.hidePassword.value
                          ? Iconsax.eye_slash
                          : Iconsax.eye,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBetweenInputFields / 2),

            //Remember me box and Forget password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Remember me
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: controller.rememberMe.value,
                        onChanged: (value) {
                          controller.rememberMe.toggle();
                        },
                      ),
                    ),
                    const Text(AppTexts.rememberMe),
                  ],
                ),

                //Forget password
                TextButton(
                  onPressed: () {
                    Get.to(() => const ForgetPassword());
                  },
                  child: const Text(AppTexts.forgetPassword),
                ),
              ],
            ),

            const SizedBox(height: AppSizes.spaceBetweenSections),

            //Sign in button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  controller.emailAndPasswordSignIn();
                },
                child: const Text(AppTexts.signIn),
              ),
            ),

            const SizedBox(height: AppSizes.spaceBetweenItems),

            //Create account button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Get.to(() => const SignupScreen());
                },
                child: const Text(AppTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
