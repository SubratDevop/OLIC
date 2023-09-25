import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olic/routes/routes.dart';
import 'package:olic/screens/Beneficiary_Details/screens/benificiary_details_screen.dart';
import 'package:olic/screens/Farmer%20registration%20Details/farmer_registration_details_screen.dart';
import 'package:olic/screens/Proposal_Not_Feasible/screens/proposal_not_feasible_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true),
      // getPages: getPages,

      // initialRoute: "/Beneficiary_Details_Screen",
      // home: Beneficiary_Details_Screen(),
      home: FarmerRegistrationDetailsScreen(),
    );
  }
}
