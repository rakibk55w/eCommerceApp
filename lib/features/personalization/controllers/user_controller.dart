import 'package:e_commerce_app/data/repositories/user/user_repository.dart';
import 'package:e_commerce_app/features/authentication/models/user_model.dart';
import 'package:e_commerce_app/utils/popups/loaders.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  //Save user record from any registration provider
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        //Convert name to first and last name
        final nameParts = UserModel.nameParts(
          userCredential.user!.displayName ?? '',
        );
        final username = UserModel.generateUsername(
          userCredential.user!.displayName ?? '',
        );

        //Map data
        final user = UserModel(
          id: userCredential.user!.uid,
          username: username,
          email: userCredential.user!.email ?? '',
          firstName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          profilePicture: userCredential.user!.photoURL ?? '',
        );

        //Save user record
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      AppLoader.warningSnackBar(
        title: 'Data not saved',
        message: 'Something went wrong while saving your data.',
      );
    }
  }
}
