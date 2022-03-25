import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base/app/resource/app_themes.dart';
import 'package:flutter_base/app/services/app_translations.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: true,
      theme: AppThemes.darkTheme,
      initialRoute: Routes.init,
      getPages: AppPages.pages,
      locale: AppTranslations.locale,
      fallbackLocale: AppTranslations.fallbackLocale,
      translations: AppTranslations(),
      defaultTransition: Transition.rightToLeft,
    );
  }
}
