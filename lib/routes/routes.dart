import 'package:get/get.dart';

import '../screens/Beneficiary_Details/screens/benificiary_details_screen.dart';

class Routes {
  static String beneficiaryDetailsScreen = "/Beneficiary_Details_Screen";
}

final getPages = [
  GetPage(
    name: Routes.beneficiaryDetailsScreen,
    page: () =>  Beneficiary_Details_Screen(),
  )
];
