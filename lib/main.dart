import 'package:flutter/material.dart';
import 'package:flutter_getx/core/sevices/settings_services.dart';
import 'package:flutter_getx/core/utils/auth_middleware.dart';
import 'package:flutter_getx/core/utils/my_binding.dart';
import 'package:flutter_getx/view/screens/login_screen.dart';
import 'package:flutter_getx/view/screens/screen_one.dart';
import 'package:get/get.dart';

import 'view/screens/home_screen.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => SettingsServices().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      home: ScreenOne(),
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
