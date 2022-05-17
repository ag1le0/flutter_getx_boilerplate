import 'package:get/get.dart';

class UserDetailController extends GetxController {
  late final int userID;

  @override
  void onInit() {
    userID = int.parse(Get.parameters['id']!);
    super.onInit();
  }
}
