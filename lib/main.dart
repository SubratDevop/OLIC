import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:olic/routes/routes.dart';
import 'package:olic/screens/Beneficiary_Details/benificiary_details_screen.dart';

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
      getPages: getPages,

      initialRoute: "/Beneficiary_Details_Screen",
      // home: Beneficiary_Details_Screen(),
    );
  }
}
