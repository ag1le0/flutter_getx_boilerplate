import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/splash.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (controller) => Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      init: SplashController(),
    );
  }
}
