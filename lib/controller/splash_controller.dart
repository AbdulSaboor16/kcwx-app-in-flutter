import 'dart:async';

import 'package:get/get.dart';
import 'package:kcwaapp/views/screen/watch_now.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 2), () => Get.offAll(WatchNow()));
  }
}

class MyControllers extends GetxController {
  var isSwitchedOn = false.obs; // define observable variable
}

class SizenumController extends GetxController {
  var count = 1.obs;

  void increment() => count.value++;
  void decrement(){
    if(count>0){
      count.value--;
    }
  }
}

class SizeController extends GetxController {
  var sizesetting = 1.obs;

  void increment() => sizesetting.value++;
  void decrement() {
    if(sizesetting>0){
      sizesetting.value--;
    }
  } 
}