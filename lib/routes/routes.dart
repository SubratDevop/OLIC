import 'package:get/get.dart';
import 'package:olic/screens/Beneficiary_Details/screens/benificiary_info_screen.dart';

import '../screens/Beneficiary_Details/screens/benificiary_details_screen.dart';
import '../screens/Farmer registration Details/farmer_registration_details_screen.dart';
import '../screens/Proposal_Not_Feasible/screens/proposal_not_feasible_screen.dart';

class Routes {
  static String beneficiaryDetailsScreen = "/Beneficiary_Details_Screen";
  static String beneficiaryInfosScreen = "/BeneficiaryInfoScreen";
  static String farmerregistrationdetailsscreen =  "/FarmerRegistrationDetailsScreen";
  static String proposalnotfeasibleScreenState =  "/ProposalNotFeasibleScreen";
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
    name: Routes.farmerregistrationdetailsscreen,
    page: () => FarmerRegistrationDetailsScreen(),
  ),
  GetPage(
    name: Routes.proposalnotfeasibleScreenState,
    page: () => ProposalNotFeasibleScreen(),
  ),
];
