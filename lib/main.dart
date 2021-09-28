import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ui_task/theme/colors.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      theme: ThemeData(
        cardTheme: CardTheme(
          color: primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: "Application",
      locale: Locale('ar'),
      fallbackLocale: Locale('ar'),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
    ),
  );
}
