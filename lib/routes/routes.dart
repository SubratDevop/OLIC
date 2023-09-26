import 'package:get/get.dart';
import 'package:olic/screens/Beneficiary_Details/screens/benificiary_info_screen.dart';

import '../screens/Beneficiary_Details/screens/benificiary_details_screen.dart';
import '../screens/Farmer registration Details/farmer_registration_details_screen.dart';

class Routes {
  static String beneficiaryDetailsScreen = "/Beneficiary_Details_Screen";
  static String beneficiaryInfosScreen = "/BeneficiaryInfoScreen";
  static String farmer_registration_details_screen =
      "/FarmerRegistrationDetailsScreen";
}

final getPages = [
  GetPage(
    name: Routes.beneficiaryDetailsScreen,
    page: () => Beneficiary_Details_Screen(),
  ),
  GetPage(
    name: Routes.beneficiaryDetailsScreen,
    page: () => BeneficiaryInfoScreen(),
  ),
  GetPage(
    name: Routes.farmer_registration_details_screen,
    page: () => FarmerRegistrationDetailsScreen(),
  ),
];
