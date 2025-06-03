import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../data/repositories/authentication/authentication_repository.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/helpers/network_manager.dart';
import '../../../../utils/popups/full_screen_loader.dart';
import '../../../../utils/popups/loaders.dart';

class LoginController extends GetxController {
  final rememberMe = false.obs;
  final hidePassword = true.obs;

  final localStorage = GetStorage();

  final email = TextEditingController();
  final password = TextEditingController();

  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final userController = Get.put(UserController());

  //Email and password sign in
  Future<void> emailAndPasswordSignIn() async {
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
      if (!loginFormKey.currentState!.validate()) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      //Remember me button check
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME', rememberMe.value);
        //localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        //localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      //Login user using Email and Password authentication
      final userCredential = await AuthenticationRepository.instance
          .loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      //Remove loader
      AppFullScreenLoader.stopLoading();


      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  //Google sign in
  Future<void> googleSignIn() async {
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

      //Google authentication
      final userCredential = await AuthenticationRepository.instance.signInWithGoogle();

      //Save user record
      await userController.saveUserRecord(userCredential);

      //Remember me button check
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME', rememberMe.value);
      }


      //Remove loader
      AppFullScreenLoader.stopLoading();


      //Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}

