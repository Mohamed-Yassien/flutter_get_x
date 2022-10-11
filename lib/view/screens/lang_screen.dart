import 'package:flutter/material.dart';
import 'package:flutter_getx/core/locale/mylocale_controller.dart';
import 'package:get/get.dart';

class LangScreen extends StatelessWidget {
  const LangScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController myLocaleController = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: Text('home'.tr),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                myLocaleController.changeLocale('ar');
              },
              color: Colors.teal,
              child: Text(
                'arabic'.tr,
                style: const TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                myLocaleController.changeLocale('en');
              },
              color: Colors.teal,
              child: Text(
                'english'.tr,
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
