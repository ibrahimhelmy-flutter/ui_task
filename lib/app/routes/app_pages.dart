import 'package:get/get.dart';

import 'package:ui_task/app/modules/firstScreen/bindings/first_screen_binding.dart';
import 'package:ui_task/app/modules/firstScreen/views/first_screen_view.dart';
import 'package:ui_task/app/modules/home/bindings/home_binding.dart';
import 'package:ui_task/app/modules/home/views/home_view.dart';
import 'package:ui_task/app/modules/profileScreen/bindings/profile_screen_binding.dart';
import 'package:ui_task/app/modules/profileScreen/views/profile_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.FIRST_SCREEN,
      page: () => FirstScreenView(),
      binding: FirstScreenBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_SCREEN,
      page: () => ProfileScreenView(),
      binding: ProfileScreenBinding(),
    ),
  ];
}
