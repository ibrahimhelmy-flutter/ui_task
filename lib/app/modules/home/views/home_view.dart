import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:ui_task/theme/colors.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: FloatingActionButton(
          onPressed: () => controller.changeCurrentIndex(newIndex: 2),
          child: Obx(
            () => Image.asset(
              "assets/images/2330100.png",
              color: controller.currentIndex.value == 2
                  ? green
                  : Colors.grey,
            ),
          ),
          backgroundColor: primary),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }



  getFooter() {
    return Card(
      elevation: 20,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, bottom: 20, right: 10, left: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.itemList.length,
            (index) {
              var item = controller.itemList[index];

              return GestureDetector(
                onTap: () => controller.changeCurrentIndex(newIndex: index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    index == 2
                        ? Container(
                            height: 20,
                          )
                        : Obx(
                            () => Container(
                              height: 25,
                              width: 25,

                              child: Image.asset(
                                item['icon'],
                                fit: BoxFit.contain,
                                color: controller.currentIndex.value == index
                                    ? green
                                    : Colors.grey,

                              ),
                            ),
                          ),
                    Obx(
                      () => Text(
                        item['name'],
                        style: TextStyle(
                          color: controller.currentIndex.value == index
                              ? green
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  getBody() {
    return Obx(() => controller.getScreens()[controller.currentIndex.value]);
  }
}
