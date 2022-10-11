import 'package:flutter/material.dart';
import 'package:flutter_getx/core/utils/auth_middleware.dart';
import 'package:flutter_getx/core/utils/my_binding.dart';
import 'package:flutter_getx/view/screens/login_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'view/screens/home_screen.dart';

SharedPreferences? sharedPreferences;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      getPages: [
        GetPage(
          name: '/',
          page: () => const LoginScreen(),
          middlewares: [
            AuthMiddleWare(),
          ],
        ),
        GetPage(name: '/home', page: () => const HomeScreen()),
      ],
    );
  }
}
