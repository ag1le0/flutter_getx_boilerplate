import 'dart:ui';

import 'package:flutter_base/app/utils/prefs_manager.dart';
import 'package:get/get.dart';

import '../resource/app_strings.dart';

enum StoreKey { locate }

class AppTranslations extends Translations {
  static Locale? locale = _getLocaleFromLanguage();
  static const fallbackLocale = Locale('en', 'US');

  static final langCodes = [
    'en',
    'vi',
  ];

  static const locales = [
    Locale('en', 'US'),
    Locale('vi', 'VN'),
  ];

  static Future<void> changeLocale(String langCode) {
    locale = _getLocaleFromLanguage(langCode: langCode);
    PrefsManager().set(StoreKey.locate.name, locale);
    return Get.updateLocale(locale!);
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': AppStrings.enUs,
        'vi_VN': AppStrings.viVn,
      };

  static Locale? _getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale!.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}
