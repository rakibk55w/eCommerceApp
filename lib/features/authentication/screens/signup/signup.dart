import 'package:e_commerce_app/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce_app/utils/constants/sizes.dart';
import 'package:e_commerce_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Title
              Text(AppTexts.signupTitle, style: Theme.of(context).textTheme.headlineMedium,),

              const SizedBox(height: AppSizes.spaceBetweenSections,),

              //Form
              const SignupForm()
            ],
          ),
        ),
      ),
    );
  }
}

