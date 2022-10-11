import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:get/get.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (sharedPreferences!.getString('id') != null) {
      return const RouteSettings(name: '/home');
    }
    return null;
  }
}
