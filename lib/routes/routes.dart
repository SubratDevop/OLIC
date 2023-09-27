import 'package:get/get.dart';
import 'package:olic/screens/Beneficiary_Details/screens/benificiary_info_screen.dart';

import '../screens/Beneficiary_Details/screens/benificiary_details_screen.dart';
import '../screens/Farmer_Registration_Details/farmer_registration_details_screen.dart';
import '../screens/Pending_Feasible_screen/screens/pending_feasible_info_screen.dart';
import '../screens/Pending_Feasible_screen/screens/pending_feasible_screen.dart';
import '../screens/Proposal_Not_Feasible/screens/proposal_not_feasible_screen.dart';
import '../screens/Total_Proposal_Feasible/screens/total_proposal_feasible_info_screen.dart';
import '../screens/Total_Proposal_Feasible/screens/total_proposal_feasible_screen.dart';

class Routes {
  static String beneficiaryDetailsScreen = "/Beneficiary_Details_Screen";
  static String beneficiaryInfosScreen = "/BeneficiaryInfoScreen";
  static String farmerregistrationdetailsscreen =  "/FarmerRegistrationDetailsScreen";
  static String proposalnotfeasibleScreen =  "/ProposalNotFeasibleScreen";
  static String proposalNotFeasibleInfoScreen =  "/ProposalNotFeasibleInfoScreen";
  static String totalProposalFeasibleScreen=  "/TotalProposalFeasibleScreen";
  static String totalProposalFeasibleInfoScreen=  "/TotalProposalFeasibleInfoScreen";
  static String pendingFeasibleScreen=  "/PendingFeasibleScreen";
  static String pendingFeasibleInfoScreen=  "/PendingFeasibleInfoScreen";
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
    name: Routes.proposalnotfeasibleScreen,
    page: () => ProposalNotFeasibleScreen(),
  ),
  GetPage(
    name: Routes.totalProposalFeasibleScreen,
    page: () => TotalProposalFeasibleScreen(),
  ),
  GetPage(
    name: Routes.totalProposalFeasibleInfoScreen,
    page: () => TotalProposalFeasibleInfoScreen(),
  ),
  GetPage(
    name: Routes.pendingFeasibleScreen,
    page: () => PendingFeasibleScreen(),
  ),
  GetPage(
    name: Routes.pendingFeasibleInfoScreen,
    page: () => PendingFeasibleInfoScreen(),
  ),
];
