import 'package:get/get.dart';

import '../controller/user_detail.dart';

class UserDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDetailController());
  }
}
