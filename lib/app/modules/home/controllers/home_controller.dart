import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_task/app/modules/firstScreen/views/first_screen_view.dart';
import 'package:ui_task/app/modules/profileScreen/views/profile_screen_view.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;

  List itemList = [
    {"name": "التبرعات", "icon": "assets/images/outline.png"},
    {"name": "المبادرات", "icon": "assets/images/Group 16854.png"},
    {"name": "ألأخبار", "icon": "assets/images/Group 88073.png"},
    {"name": "السلة", "icon": "assets/images/Group 88073.png"},
    {"name": "البروفايل", "icon": "assets/images/user.png"},
  ];

  List<Widget> getScreens() {
    return [
      FirstScreenView(),
      _getScreen("المبادرات"),

      _getScreen("ألأخبار"),
      _getScreen("السلة"),
      ProfileScreenView(),
    ];
  }

  void changeCurrentIndex({newIndex}) {
      currentIndex.value = newIndex;
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  _getScreen(String s) {
    return Center(
        child: Text(
          s,
          style: TextStyle(color: Colors.black),
        ));
  }


}