import 'package:flutter/material.dart';
import 'package:flutter_base/app/ui/pages/home/controller.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('text'),
      ),
      body: controller.obx(
        (state) => Center(
          child: Text(''),
        ),
        onEmpty: const Center(
          child: Text('No data'),
        ),
        onError: (error) {
          Get.dialog(AlertDialog(
            title: Text(error ?? ''),
          ));
          return Container();
        },
      ),
    );
  }
}
