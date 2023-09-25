import 'package:flutter/material.dart';
import 'package:get/get.dart';

AppBar defaultAppBar(BuildContext context,
    {required bool leading_icon_visibility, required final String title}) {
  return AppBar(
    backgroundColor: Colors.teal,
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500),
    ),
    leading: leading_icon_visibility == false
        ? SizedBox()
        : InkWell(
            child:
                const SizedBox(height: 20, width: 20, child: Icon(Icons.arrow_back,color: Colors.white,)),
            onTap: () {
              Get.back();
            },
          ),
  );
}
