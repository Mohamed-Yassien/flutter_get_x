import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}