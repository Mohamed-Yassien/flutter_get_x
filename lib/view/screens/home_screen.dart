import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:flutter_getx/view/screens/screen_one.dart';
import 'package:flutter_getx/view/screens/screen_two.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Get.to(() => ScreenOne());
              },
              child: const Text('Screen one'),
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const ScreenTwo());
              },
              child: const Text('Screen two'),
            ),
            MaterialButton(
              onPressed: () {
                // sharedPreferences!.clear();
                Get.offNamed('/');
              },
              color: Colors.red,
              child: const Text('sign out'),
            ),
          ],
        ),
      ),
    );
  }
}
