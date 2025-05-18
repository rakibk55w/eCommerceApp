import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/common/styles/spacing_styles.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_footer.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppbarHeight,
          child: Column(
            children: [
              //Logo title and sub title
              const AppLoginHeader(),

              //Login form
              const AppLoginForm(),

              //Divider
              AppFormDivider(dividerText: AppTexts.orSignInWith.capitalize!,),

              const SizedBox(height: AppSizes.spaceBetweenSections),

              //Footer
              const AppSocialFooter(),
            ],
          ),
        ),
      ),
    );
  }
}




