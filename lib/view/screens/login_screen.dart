import 'package:flutter/material.dart';
import 'package:flutter_getx/main.dart';
import 'package:flutter_getx/view/screens/home_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: () {
            // sharedPreferences!.setString('id', '1');
            Get.offAllNamed('/home');
          },
          color: Colors.deepOrange,
          child: const Text('login'),
        ),
      ),
    );
  }
}
