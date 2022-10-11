import 'package:flutter/material.dart';
import 'package:flutter_getx/core/sevices/settings_services.dart';
import 'package:flutter_getx/view/screens/theme_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';


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
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ThemeScreen(),
    );
  }
}
