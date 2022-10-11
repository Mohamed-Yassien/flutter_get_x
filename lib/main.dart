import 'package:flutter/material.dart';
import 'package:flutter_getx/core/locale/my_locale.dart';
import 'package:flutter_getx/core/locale/mylocale_controller.dart';
import 'package:flutter_getx/core/sevices/settings_services.dart';
import 'package:flutter_getx/core/utils/auth_middleware.dart';
import 'package:flutter_getx/core/utils/my_binding.dart';
import 'package:flutter_getx/view/screens/lang_screen.dart';
import 'package:flutter_getx/view/screens/login_screen.dart';
import 'package:flutter_getx/view/screens/screen_one.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'view/screens/home_screen.dart';

late SharedPreferences sharedPreferences;

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  sharedPreferences = await SharedPreferences.getInstance();
  await Get.putAsync(() => SettingsServices().init());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyLocaleController myLocaleController = Get.put(MyLocaleController());

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      locale: myLocaleController.initialLocale,
      translations: MyLocale(),
      initialBinding: MyBinding(),
      home: LangScreen(),
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
