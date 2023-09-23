import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BenificiaryDetailsController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final columns = ['Registration\nNo', 'Namee', 'Mobile\nNo', ''].obs;

  List<DataColumn> getColumns(List<String> columns) => columns
      .map(
        (String column) => DataColumn(
          label: Row(
            children: [
              Text(column),
              SizedBox(
                width: 08,
              ),
              Icon(Icons.sort_sharp)
            ],
          ),
        ),
      )
      .toList();
}
