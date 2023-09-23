import 'package:flutter/material.dart';

class BeneficiaryInfoScreen extends StatelessWidget {
 static List<String?>? userDetails;

  @override
  Widget build(BuildContext context) {
    print(userDetails![1].toString());
    return Container(
      color: Colors.amber,
    );
  }
}
