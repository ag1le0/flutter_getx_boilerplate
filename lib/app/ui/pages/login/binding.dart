import 'package:flutter_base/app/data/repository/auth_repository.dart';
import 'package:get/get.dart';

import 'controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LoginController());
    Get.lazyPut(() => AuthRepository());
  }
}
