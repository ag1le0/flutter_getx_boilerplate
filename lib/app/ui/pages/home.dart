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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                  onPressed: () {
                    Get.toNamed(Routes.user);
                  },
                  child: const Text('To user page')),
              TextButton(onPressed: controller.logout, child: Text('Logout')),
            ],
          ),
        ));
  }
}
