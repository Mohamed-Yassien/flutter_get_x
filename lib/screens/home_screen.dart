import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/screen_one.dart';
import 'package:flutter_getx/screens/screen_three.dart';
import 'package:flutter_getx/screens/screen_two.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                Get.off(
                  const ScreenOne(),
                  curve: Curves.slowMiddle,
                  duration:const Duration(
                    milliseconds: 800,
                  ),
                );
              },
              child: const Text(
                'Screen 1',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                Get.to(const ScreenTwo());
              },
              child: const Text(
                'Screen 2',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            MaterialButton(
              color: Colors.deepOrange,
              onPressed: () {
                Get.to(const ScreenThree());
              },
              child: const Text(
                'Screen 3',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
