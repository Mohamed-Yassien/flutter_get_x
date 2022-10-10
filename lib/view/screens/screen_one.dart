import 'package:flutter/material.dart';
import 'package:flutter_getx/controller/home_controller.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
   ScreenOne({Key? key}) : super(key: key);

  final HomeController controller = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body:  Center(
        child: Row(
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
            GetBuilder<HomeController>(
              builder: (controller) => Text(
                '${controller.counter}',
                style: const TextStyle(
                  fontSize: 30,
                ),
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
    );
  }
}
