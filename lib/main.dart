import 'package:flutter/material.dart';
import 'package:flutter_getx/core/utils/my_binding.dart';
import 'package:get/get.dart';

import 'view/screens/home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      home: HomeScreen(),
    );
  }
}
