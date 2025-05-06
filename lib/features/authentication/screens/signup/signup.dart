import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
              AppSizes.defaultSpace
          ),
          child: Column(
            children: [
              //Title
              Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: AppSizes.spaceBetweenSections,),

              //Form
              Form(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                              labelText: AppTexts.firstName,
                              prefixIcon: Icon(
                                Iconsax.user
                              )
                            ),
                          ),
                        ),

                        SizedBox(width: AppSizes.spaceBetweenInputFields,),

                        Expanded(
                          child: TextFormField(
                            expands: false,
                            decoration: const InputDecoration(
                                labelText: AppTexts.firstName,
                                prefixIcon: Icon(
                                    Iconsax.user
                                )
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}
