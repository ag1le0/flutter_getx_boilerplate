import 'package:flutter/material.dart';
import 'package:flutter_base/app/ui/controller/home.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: TextButton(
              onPressed: () {
                Get.toNamed(Routes.home + '/1');
              },
              child: Text('To user detail')),
        ));
  }
}
