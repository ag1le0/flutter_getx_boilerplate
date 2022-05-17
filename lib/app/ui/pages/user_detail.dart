import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/user_detail.dart';

class UserDetailPage extends GetView<UserDetailController> {
  const UserDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('User detail'),
        ),
        body: Center(
          child: Text('User ID: ${controller.userID}'),
        ));
  }
}
