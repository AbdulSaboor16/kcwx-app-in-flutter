import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kcwaapp/controller/splash_controller.dart';
import 'package:kcwaapp/text_widget.dart';
import 'package:kcwaapp/utils/color_constant.dart';
import 'package:kcwaapp/views/screen/watch_now.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    MyControllers control = Get.put(MyControllers());
    final SizenumController controller = Get.put(SizenumController());
    final SizeController controllers = Get.put(SizeController());
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
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
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: width,
                  color: ColorConstant.blackColor,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 15.0),
                        height: 100,
                        width: 40,
                        child: IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: ColorConstant.whiteColor,
                            )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10.0),
                        height: 100,
                        width: Get.width * .5,
                        child: Row(
                          children: [
                            Text("Settings",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: ColorConstant.whiteColor,
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 70,
                  width: width,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        height: 50,
                        width: Get.width * .6,
                        child: Text(
                          "APPLICATION SETTINGS",
                          style: TextStyle(
                              fontSize: 20, color: ColorConstant.whiteColor),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: width,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                          left: 20.0,
                        ),
                        height: 50,
                        width: Get.width * .9,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Use system Text Setting",
                              style: TextStyle(
                                  color: ColorConstant.whiteColor,
                                  fontSize: 14),
                            ),
                            Obx(
                              () => Switch(
                                inactiveTrackColor: ColorConstant.greyColor,
                                value: control.isSwitchedOn.value,
                                onChanged: (value) {
                                  control.isSwitchedOn.value = value;
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  height: 2,
                  width: width * .9,
                  color: ColorConstant.greyColor,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
        height: 50,
        width: Get.width,
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 20.0,
              ),
              height: 50,
              width: Get.width * .4,
              child: Row(
                children: [
                  customTextWidget(
                    text: "Text Size",
                    fontSize: 14,
                  )
                  // Text("Text Size",style: TextStyle(fontSize: 18,color: ColorConstant.whiteColor),)
                ],
              ),
            ),
            Container(
              height: 50,
              // color: Colors.pink,
              width: Get.width * .5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 50,
                      width: 20,
                      margin: const EdgeInsets.only(right: 25.0),
                      // color: Colors.blue,
                      child: Center(
                          child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed: controllers.decrement,
                        icon: Icon(
                          Icons.remove,
                          size: 18,
                        ),
                        color: ColorConstant.whiteColor,
                      ))),
                  Container(
                      height: 50,
                      width: 35,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            height: 30,
                            width: 35,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              child: Center(
                                  child: Obx(() => Text(
                                    ' ${controllers.sizesetting}',
                                
                                style:
                                    TextStyle(color: ColorConstant.whiteColor),
                              ))
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                    // color: Colors.blue,
                    height: 50,
                    width: 20,
                    margin: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Center(
                        child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: controllers.increment,
                      icon: Icon(
                        Icons.add,
                        size: 18,
                      ),
                      color: ColorConstant.whiteColor,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  height: 2,
                  width: width * .9,
                  color: ColorConstant.greyColor,
                )
              ],
            ),
            Row(
              children: [
                Container(
        height: 50,
        width: Get.width,
        child: Row(
          children: [
            Container(
              // color: Colors.red,
              margin: const EdgeInsets.only(
                left: 20.0,
              ),
              height: 50,
              width: Get.width * .4,
              child: Row(
                children: [
                  // customTextWidget(text: "Refresh Section Every(in mins)", fontSize: 16,)

                  customTextWidget(
                    text: "Refresh Section",
                    fontSize: 14,
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              // color: Colors.pink,
              width: Get.width * .5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                      height: 50,
                      width: 20,
                      margin: const EdgeInsets.only(right: 25.0),
                      // color: Colors.blue,
                      child: Center(
                          child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        onPressed:  controller.decrement,
                        icon: Icon(
                          Icons.remove,
                          size: 18,
                        ),
                        color: ColorConstant.whiteColor,
                      ))),
                  Container(
                      height: 50,
                      width: 35,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10.0,
                            ),
                            height: 30,
                            width: 35,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                    width: 1,
                                    color: Color.fromARGB(255, 255, 255, 255)),
                              ),
                              child: Center(
                                  child: Obx(() => Text(
                                    ' ${controller.count}',textAlign: TextAlign.center,
                                
                                style:
                                    TextStyle(color: ColorConstant.whiteColor),
                              ))
                              ),
                            ),
                          )
                        ],
                      )),
                  Container(
                    // color: Colors.blue,
                    height: 50,
                    width: 20,
                    margin: const EdgeInsets.only(left: 10.0, right: 10),
                    child: Center(
                        child: IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      onPressed: controller.increment,
                      icon: Icon(
                        Icons.add,
                        size: 18,
                      ),
                      color: ColorConstant.whiteColor,
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      )
                ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: width * .9,
                  margin: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "INFORMATION",
                    style: TextStyle(
                      fontSize: 18,
                      color: ColorConstant.whiteColor,
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                informationtab(Text(
                  "About Us",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstant.whiteColor),
                ))
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  height: 2,
                  width: width * .9,
                  color: ColorConstant.greyColor,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                informationtab(Text(
                  "Customer Service",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstant.whiteColor),
                ))
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  height: 2,
                  width: width * .9,
                  color: ColorConstant.greyColor,
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                informationtab(Text(
                  "Terms Of Use",
                  style:
                      TextStyle(fontSize: 14, color: ColorConstant.whiteColor),
                ))
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 15.0,
                  ),
                  height: 2,
                  width: width * .9,
                  color: ColorConstant.greyColor,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

textwidget() {
  return Row(
    children: [
      
    ],
  );
}



informationtab(Text) {
  return Row(
    children: [
      Container(
        height: 20,
        width: Get.width * .9,
        margin: const EdgeInsets.only(left: 20.0),
        child: Text,
      )
    ],
  );
}
