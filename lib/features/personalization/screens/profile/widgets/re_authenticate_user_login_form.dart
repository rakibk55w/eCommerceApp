import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:e_commerce_app/utils/validators/validation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ReAuthLoginForm extends StatelessWidget {
  const ReAuthLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;

    return Scaffold(
      appBar: AppBar(title: const Text('Re-Authenticate User')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSizes.defaultSpace),
          child: Form(
            key: controller.reAuthFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Email
                TextFormField(
                  controller: controller.verifyEmail,
                  validator: (value) => AppValidator.validateEmail(value),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Iconsax.direct_right),
                    labelText: AppTexts.email,
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBetweenInputFields),

                //Password
                Obx(
                  () => TextFormField(
                    obscureText: controller.hidePassword.value,
                    controller: controller.verifyPassword,
                    validator:
                        (value) =>
                            AppValidator.validateEmptyText('Password', value),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Iconsax.direct_right),
                      labelText: AppTexts.password,
                      suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.toggle(),
                        icon:
                            controller.hidePassword.value
                                ? const Icon(Iconsax.eye_slash)
                                : const Icon(Iconsax.eye),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: AppSizes.spaceBetweenSections),

                //Sign in button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                    },
                    child: const Text(AppTexts.signIn),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
