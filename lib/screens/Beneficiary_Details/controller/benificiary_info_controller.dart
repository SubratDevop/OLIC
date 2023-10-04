import 'package:get/get.dart';

import '../model/user_modal.dart';

class BenificiaryInfoController extends GetxController {
  List<User> users = [];

  @override
  void onInit() {
    super.onInit();
    users = User.allUser();
  }
}
