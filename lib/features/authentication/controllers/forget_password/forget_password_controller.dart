import 'package:e_commerce_app/data/repositories/authentication/authentication_repository.dart';
import 'package:e_commerce_app/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();

  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();

  sendPasswordResetEmail() async {
    try {
      //Start loading
      AppFullScreenLoader.openLoadingDialog(
        'Logging you in...',
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
      if (!forgetPasswordFormKey.currentState!.validate()) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email.text.trim());

      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show success screen
      AppLoader.successSnackBar(title: 'Email Sent', message: 'A link has been sent to your email');

      //Redirect
      Get.to(() => ResetPasswordScreen(email: email.text.trim(),));
    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  resendPasswordResetEmail(String email) async {
    try {
      //Start loading
      AppFullScreenLoader.openLoadingDialog(
        'Please wait...',
        AppImages.docerAnimation,
      );

      //Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      await AuthenticationRepository.instance.sendPasswordResetEmail(email);

      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show success screen
      AppLoader.successSnackBar(title: 'Email Sent', message: 'A link has been sent to your email');

    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}