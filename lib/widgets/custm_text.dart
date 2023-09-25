import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:olic/constants/screensize.dart';

class TittleText extends StatelessWidget {
  TittleText({this.textWeight, this.tittle});
  final String? tittle;
  final FontWeight? textWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle!,
      style: TextStyle(
          fontSize: AppDimension.mediumTextSize, fontWeight:textWeight ?? FontWeight.bold),
    );
  }
}

class TittleRegulatText extends StatelessWidget {
  TittleRegulatText({this.textWeight, this.tittle});
  final String? tittle;
  final FontWeight? textWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      tittle!,
      style: TextStyle(
          fontSize: AppDimension.mediumTextSize, fontWeight: FontWeight.normal),
    );
  }
}
