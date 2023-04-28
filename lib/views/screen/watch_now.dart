import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kcwaapp/utils/color_constant.dart';
import 'package:kcwaapp/views/setting_page.dart';

class WatchNow extends StatelessWidget {
  const WatchNow({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.to(SettingPage());
          },
          child: Icon(Icons.laptop),
          backgroundColor: ColorConstant.blueColor,
        ),
        backgroundColor: ColorConstant.blackColor,
        body: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 70,
                  width: width,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: Get.width * .6,
                        color: ColorConstant.blackColor,
                        child: Row(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 10.0),
                              height: 100,
                              width: 70,
                              child: Image.asset("assets/images/image.png"),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 100,
                        width: Get.width * .4,
                        color: ColorConstant.blackColor,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                                height: 100,
                                width: Get.width * .2,
                                child: IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.connected_tv_sharp,
                                      color: ColorConstant.greyColor,
                                    ))),
                            Container(
                                height: 100,
                                width: Get.width * .2,
                                child: IconButton(
                                    onPressed: () {
                                      Get.to(SettingPage());
                                    },
                                    icon: Icon(
                                      Icons.settings,
                                      color: ColorConstant.whiteColor,
                                    ))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                    margin:
                        const EdgeInsets.only(left: 20.0, right: 10, top: 20),
                    height: 100,
                    width: width,
                    child: Text(
                      "Watch Now",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 25, color: ColorConstant.whiteColor),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
