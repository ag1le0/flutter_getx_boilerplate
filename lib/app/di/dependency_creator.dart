import 'package:get/get.dart';

import '../services/auth_service.dart';

class DependencyCreator {
  init() async {
    Get.put(AuthService());
    return this;
  }
}
