import 'package:flutter/material.dart';
import 'package:flutter_base/app/ui/controller/home.dart';
import 'package:flutter_base/app/ui/routes/app_pages.dart';
import 'package:get/get.dart';

class UserPage extends GetView<HomeController> {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        body: Center(
          child: ListView.builder(
            padding: EdgeInsets.all(8),
            itemBuilder: (ctx, pos) => ListTile(
              onTap: () {
                Get.toNamed(Routes.user + '/$pos');
              },
              title: Text('User $pos'),
              subtitle: Text('Click to open detail'),
            ),
          ),
        ));
  }
}
