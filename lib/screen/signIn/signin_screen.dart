import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:urban/controller/signIn_controller.dart';
import 'package:urban/utills/Api_Client.dart';
import 'package:urban/utills/color.dart';
import 'package:urban/utills/images.dart';

class SignInScreen extends StatelessWidget {
  //final SignInController signInController = Get.put(SignInController());
  //final SignInController controller;
  final _SignInController = Get.put(SignInController());

  // SignInScreen({
  //   Key? key,
  //   required this.controller,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Api_Client.config(context);

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 30,
            ),
            //SvgPicture.asset(appLogo, height: 80),
            Image.asset(appLogo, height: 80),
            SizedBox(
              height: 35,
            ),
            Text(
              "UdG Virtual",
              style: TextStyle(
                  fontFamily: "RobotoMedium", color: black, fontSize: 22),
            ),
            Text(
              "App Películas",
              style: TextStyle(
                  fontFamily: "RobotoRegular", color: grayDark, fontSize: 22),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Usuario",
                style: TextStyle(
                    fontFamily: "RobotoRegular", color: black00, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 49,
                    decoration: BoxDecoration(
                        color: whiteLight,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      style: TextStyle(
                          fontFamily: "RobotoRegular",
                          color: black,
                          fontSize: 16),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "usuario",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Usuario",
                style: TextStyle(
                    fontFamily: "RobotoRegular", color: black00, fontSize: 14),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 49,
                    decoration: BoxDecoration(
                        color: whiteLight,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      obscureText: true,
                      style: TextStyle(
                          fontFamily: "RobotoRegular",
                          color: black,
                          fontSize: 16),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: "contraseña",
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                          ),
                          contentPadding: EdgeInsets.only(left: 20)),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            MaterialButton(
              //   onPressed: () {
              //     Get.to(LocationScreen());
              //   },
              onPressed: () {
                //signInController.printInfo()

                // Navigator.pushAndRemoveUntil(
                //   context,
                //   MaterialPageRoute(
                //     builder: (BuildContext context) => DashBoardScreen(),
                //   ),
                //   (route) => false,
                // );
              },
              color: blue,
              height: 54,
              minWidth: Get.width,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                "Ingresar",
                style: const TextStyle(
                    color: white, fontSize: 16, fontFamily: "RobotoMedium"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
