import 'dart:async';

import 'package:get/get.dart';
import 'package:urban/screen/signIn/signIn_screen.dart';
import 'package:urban/screen/welcomeScreen/welcome_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    //Timer(const Duration(seconds: 5), () => Get.off((WelcomeScreen())));

    Timer(const Duration(seconds: 5), () => Get.off((SignInScreen())));
    super.onInit();
  }
}
