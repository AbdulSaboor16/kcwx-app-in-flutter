import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kcwaapp/controller/splash_controller.dart';
import 'package:kcwaapp/utils/color_constant.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashController control = Get.put(SplashController());
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: GetBuilder<SplashController>(
        init: SplashController(),
        builder: (controller) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/im.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: null /* add child content here */,
          );
        },
      ),
    );
  }
}
