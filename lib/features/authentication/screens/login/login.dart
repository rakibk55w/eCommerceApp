import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/helper_functions.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //Logo title and sub title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(dark ? AppImages.lightAppLogo : AppImages.darkAppLogo),
                    height: 150,
                  ),
                  Text(AppTexts.loginTitle, style: Theme.of(context).textTheme.headlineMedium,),
                  SizedBox(height: AppSizes.sm,),
                  Text(AppTexts.loginSubTitle, style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(height: AppSizes.sm,),
                ],
              ),

              //Login form
              Form(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: AppSizes.spaceBetweenSections
                    ),
                    child: Column(
                      children: [
                        //Email field
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Iconsax.direct_right
                            ),
                            labelText: AppTexts.email
                          ),
                        ),

                        SizedBox(height: AppSizes.spaceBetweenInputFields,),

                        //Password field
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                                Iconsax.password_check
                            ),
                            labelText: AppTexts.password,
                            suffixIcon: Icon(
                              Iconsax.eye_slash
                            )
                          ),
                        ),

                        SizedBox(height: AppSizes.spaceBetweenInputFields / 2,),

                        //Remember me box and Forget password
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            //Remember me
                            Row(
                              children: [
                                Checkbox(value: true, onChanged: (value){}),
                                Text(AppTexts.rememberMe)
                              ],
                            ),

                            //Forget password
                            TextButton(onPressed: (){}, child: Text(AppTexts.forgetPassword))
                          ],
                        ),

                        SizedBox(height: AppSizes.spaceBetweenSections),

                        //Sign in button
                        SizedBox(width: double.infinity, child: ElevatedButton(onPressed: (){}, child: Text(AppTexts.signIn))),

                        SizedBox(height: AppSizes.spaceBetweenItems),

                        //Create account button
                        SizedBox(width: double.infinity, child: OutlinedButton(onPressed: (){}, child: Text(AppTexts.createAccount))),
                      ],
                    ),
                  )
              ),

              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(AppTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium,),
                  Flexible(
                    child: Divider(
                      color: dark ? AppColors.darkGrey : AppColors.grey,
                      thickness: 0.5,
                      indent: 5,
                      endIndent: 60,
                    ),
                  )
                ],
              ),

              SizedBox(height: AppSizes.spaceBetweenSections,),

              //Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.grey
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Image(
                        height: AppSizes.iconMd,
                        width: AppSizes.iconMd,
                        image: AssetImage(
                            AppImages.google
                        )
                      )
                    ),
                  ),
                  SizedBox(width: AppSizes.spaceBetweenItems,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: AppColors.grey
                      ),
                      borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      onPressed: (){},
                      icon: Image(
                        height: AppSizes.iconMd,
                        width: AppSizes.iconMd,
                        image: AssetImage(
                            AppImages.facebook
                        )
                      )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
