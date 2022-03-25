import 'dart:ui';

import 'package:flutter_base/app/resource/app_strings.dart';
import 'package:flutter_base/app/utils/prefs_manager.dart';
import 'package:get/get.dart';

enum StoreKey { locate }

class AppTranslations extends Translations {
  static Locale? locale = _getLocaleFromLanguage();
  static const fallbackLocale = Locale('en', 'US');

  static final langCodes = [
    'en',
    'vi',
    'zh',
  ];

  static const locales = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
    Locale('zh', 'CN'),
  ];

  static Future<void> changeLocale(String langCode) {
    locale = _getLocaleFromLanguage(langCode: langCode);
    PrefsManager().set(StoreKey.locate.name, locale);
    return Get.updateLocale(locale!);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enUs,
        'vi_VN': viVn,
        'zh_CN': zhCN,
      };

  static Locale? _getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale!.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}
