import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:urban/controller/splash_controller.dart';
import 'package:urban/utills/images.dart';

class SplashScreen extends StatelessWidget {
  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Center(
          //child: SvgPicture.asset(appLogo),
          child: Image.asset(appLogo),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(splashBackground), fit: BoxFit.cover)),
      ),
    );
  }
}
