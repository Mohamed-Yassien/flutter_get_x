import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme Screen'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            Get.changeTheme(
              Get.isDarkMode ? ThemeData.light() : ThemeData.dark(),
            );
          },
          child: const Text('change theme'),
        ),
      ),
    );
  }
}
