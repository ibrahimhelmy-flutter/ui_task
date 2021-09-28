import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  var currentIndex = 0.obs;
  CarouselController buttonCarouselController = CarouselController();

  changeCurrentIndex({newIndex}) {
    currentIndex.value = newIndex;
  }

  List? items;

  @override
  void onInit() {
    super.onInit();
    items = [
      {"img": "assets/images/image2.png"},
      {"img": "assets/images/image2.png"},
      {"img": "assets/images/image2.png"},
      {"img": "assets/images/image2.png"},

    ];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
