import 'package:get/get.dart';

class MyLocale implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "home": "الصفحة الرئيسية",
          "arabic": "العربية",
          "english": "انجليزي"
        },
        "en": {"home": "home screen", "arabic": "arabic", "english": "english"},
      };
}
