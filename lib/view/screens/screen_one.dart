import 'package:flutter/material.dart';
import 'package:flutter_getx/core/sevices/settings_services.dart';
import 'package:get/get.dart';

class ScreenOne extends GetView<SettingsServices> {
  ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen One'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<SettingsServices>(
              builder: (c) => Text('${c.counter}'),
            ),
            IconButton(
              onPressed: () {
                controller.increment();
              },
              icon: const Icon(
                Icons.add,
                size: 35,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
