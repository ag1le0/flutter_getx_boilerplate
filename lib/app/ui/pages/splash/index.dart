import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      builder: (controller) => Scaffold(
        appBar: AppBar(title: Text('My Page')),
        body: Container(),
      ),
      init: SplashController(),
    );
  }
}
