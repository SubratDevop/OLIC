import 'package:get/get.dart';

import '../../Beneficiary_Details/model/user_modal.dart';


class ProposalNotFeasibleInfoController extends GetxController {
   List<User> users = [];
 
 
 
 
  @override
  void onInit() {
    super.onInit();
    users = User.allUser();
  }
}