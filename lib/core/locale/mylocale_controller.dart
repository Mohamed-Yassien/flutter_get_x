import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class MyLocaleController extends GetxController {
  Locale initialLocale = sharedPreferences.getString('lang') == null
      ? Get.deviceLocale!
      : Locale(sharedPreferences.getString('lang')!);

  void changeLocale(String code) {
    Locale locale = Locale(code);
    sharedPreferences.setString('lang', code);
    Get.updateLocale(locale);
  }
}
