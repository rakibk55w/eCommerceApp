import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/models/user_model.dart';
import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/popups/full_screen_loader.dart';
import '../../screens/signup/verify_email.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  final hidePassword = true.obs;
  final privacyPolicy = false.obs;

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      //Start loading
      AppFullScreenLoader.openLoadingDialog(
        'Processing your information...',
        AppImages.docerAnimation,
      );

      //Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      //Form validation
      if (!signupFormKey.currentState!.validate()) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      //Privacy policy check
      if (!privacyPolicy.value) {
        AppLoader.warningSnackBar(
          title: 'Accept Privacy Policy',
          message:
              'In order to create account, you must read and accept the Privacy Policy and Terms of Use.',
        );
        return;
      }

      //Register user and save user data in firebase
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
            email.text.trim(),
            password.text.trim(),
          );

      //Save user data in firestore
      final newUser = UserModel(
        id: userCredential.user!.uid,
        username: username.text.trim(),
        email: email.text.trim(),
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show success message
      AppLoader.successSnackBar(
        title: 'Congratulations!',
        message: 'Your account has been created successfully. Verify email to continue',
      );

      //Move to verify email screen
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
