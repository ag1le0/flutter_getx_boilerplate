import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/login.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: TextButton(
          child: Text('Login'),
          onPressed: controller.login,
        ),
      ),
    );
  }
}
