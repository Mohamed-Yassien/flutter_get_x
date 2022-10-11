import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsServices extends GetxService {
  late SharedPreferences sharedPreferences;

  RxInt counter = 0.obs;

  Future<SettingsServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    counter.value = sharedPreferences.getInt('counter') ?? 0;
    return this;
  }

  void increment() {
    counter.value++;
    sharedPreferences.setInt('counter', counter.value);
  }
}
