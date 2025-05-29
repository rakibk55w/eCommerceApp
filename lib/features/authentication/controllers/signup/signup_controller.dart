import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/popups/full_screen_loader.dart';

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
        return;
      }

      //Form validation
      if (!signupFormKey.currentState!.validate()) {
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

      //Save user data in firestore

      //Show success message

      //Move to verify email screen
    } catch (e) {
      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //Stop loading
      AppFullScreenLoader.stopLoading();
    }
  }
}
