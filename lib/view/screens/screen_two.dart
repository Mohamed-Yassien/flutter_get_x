import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen Two'),
      ),
      body: Center(
        child: GetBuilder<HomeController>(
          builder: (controller) => Text(
            '${controller.counter}',
            style: const TextStyle(
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
