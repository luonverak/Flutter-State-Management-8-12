import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  void increase() async {
    counter.value++;
  }

  void screenMode() async {
    Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
  }

  void notification() async {
    Get.snackbar('Hello', 'How are you?');
  }

  void changeLanguage() async {
    Get.updateLocale(const Locale('kh', 'KHR'));
  }
}
