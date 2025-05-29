import 'package:e_commerce_app/utils/constants/image_strings.dart';
import 'package:e_commerce_app/utils/helpers/network_manager.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../utils/popups/full_screen_loader.dart';

class SignupController extends GetxController{
  static SignupController get instance => Get.find();

  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();
  final phoneNumber = TextEditingController();

  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  Future<void> signup() async {
    try {
      //Start loading
      AppFullScreenLoader.openLoadingDialog('Processing your information...', AppImages.docerAnimation);

      //Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if(!isConnected){
        AppFullScreenLoader.stopLoading();
        return;
      }

      //Form validation

      //Privacy policy check

      //Register user and save user data in firebase

      //Save user data in firestore

      //Show success message

      //Move to verify email screen

    } catch (e) {
      //Show error message
    } finally{
      //Stop loading
    }
  }
}