import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  controller.increment();
                },
                icon: const Icon(
                  Icons.add,
                  size: 35,
                ),
              ),
              Text(
                '${controller.counter}',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  controller.decrement();
                },
                icon: const Icon(
                  Icons.remove,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
