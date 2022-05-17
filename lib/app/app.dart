import 'package:flutter/material.dart';
import 'package:flutter_base/app/resource/app_themes.dart';
import 'package:flutter_base/app/services/app_translations.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppThemes.darkTheme,
      getPages: AppPages.pages,
      initialRoute: Routes.home,
      unknownRoute: AppPages.notFoundPage,
      locale: AppTranslations.locale,
      fallbackLocale: AppTranslations.fallbackLocale,
      translations: AppTranslations(),
      defaultTransition: Transition.rightToLeft,
    );
  }
}
