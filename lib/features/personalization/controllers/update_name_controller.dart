import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/personalization/controllers/user_controller.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/network_manager.dart';
import '../../../utils/popups/full_screen_loader.dart';
import '../screens/profile/profile.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get instance => Get.find();

  final GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  final firstName = TextEditingController();
  final lastName = TextEditingController();

  final userController = UserController.instance;
  final userRepository = Get.put(UserRepository());


  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void> initializeNames() async{
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async{
    try {
      //Start loading
      AppFullScreenLoader.openLoadingDialog(
        'Updating your data...',
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
      if (!updateUserNameFormKey.currentState!.validate()) {
        //Remove loader
        AppFullScreenLoader.stopLoading();
        return;
      }

      //Update user's first & last name in the firebase firestore
      Map<String, dynamic> name = {
        'FirstName': firstName.text.trim(),
        'LastName': lastName.text.trim(),
      };

      await userRepository.updateSingleField(name);

      //Update observer values
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();

      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show success message
      AppLoader.successSnackBar(title: 'Congratulations!', message: 'Your name has been updated');

      //Redirect
      Get.off(() => const ProfileScreen());
    } catch (e) {
      //Remove loader
      AppFullScreenLoader.stopLoading();

      //Show error message
      AppLoader.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}