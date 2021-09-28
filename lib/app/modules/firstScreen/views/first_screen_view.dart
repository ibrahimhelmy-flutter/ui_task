import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ui_task/theme/colors.dart';

import '../controllers/first_screen_controller.dart';

class FirstScreenView extends GetView<FirstScreenController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<FirstScreenController>(
          () => FirstScreenController(),
    );
    return Scaffold(
      appBar:getAppbar(),
      body:   getBody(),
    );
  }
  getAppbar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(80.0),
      child: AppBar(

        backgroundColor: green,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: green, statusBarIconBrightness: Brightness.light),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 40,bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage("assets/images/Alrahma.png"),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "جمعية الرحمة \nللأمومة والطفولة",
                    style: TextStyle(
                        height: 0.9, fontWeight: FontWeight.bold, fontSize: 18),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(

                      height: 25,
                      width: 25,
                      child: Image.asset("assets/images/Group 88062.png")),
                  SizedBox(width: 15),

                  Container(

                      height: 25,
                      width: 25,
                      child: Image.asset("assets/images/Group 88252.png"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  getBody() {
    var size = Get.mediaQuery.size;
    var options = CarouselOptions(
        viewportFraction: 0.99,
        height: size.height,
        onPageChanged: (index, reason) {
          controller.changeCurrentIndex(newIndex: index);
        });
    return CarouselSlider(
      items: List.generate(4, (index) {
        return Column(
          children: [
            Container(

              child: Image.asset(
                "assets/images/image2.png",
                height: 300,
                width: 300,
              ),
            ),
            Obx(
                  () => Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                    4,
                        (index) => Container(
                      margin: const EdgeInsets.only(right: 8),
                      height: 5,
                      width: 5,
                      decoration: BoxDecoration(
                          color: controller.currentIndex.value == index
                              ? Colors.white
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(15)),
                    )),
              ),
            )
          ],
        );
      }),
      options: options,
    );
  }
}
