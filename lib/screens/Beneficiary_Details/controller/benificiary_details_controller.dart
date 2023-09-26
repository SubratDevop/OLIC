import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/user_modal.dart';

class BenificiaryDetailsController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final columns = ['Registration\nNo', 'Namee', 'Mobile\nNo', ''].obs;
  RxInt sortColumnIndex = 0.obs;
  RxBool isAsending = true.obs;
  List<User> users = [];

  List<DataColumn> getColumns() => columns
      .map(
        (String column) => DataColumn(
          onSort: sortingList,
          label: Row(
            children: [
              column == ""
                  ? SizedBox()
                  : Text(column,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
            ],
          ),
        ),
      )
      .toList();

  void sortingList(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user1.regiStrationNo.toString(),
          user2.regiStrationNo.toString(),
        ),
      );
    } else if (columnIndex == 1) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user2.name.toString(),
          user1.name.toString(),
        ),
      );
    } else if (columnIndex == 2) {
      users.sort(
        (user1, user2) => compareString(
          ascending,
          user2.mobileNo.toString(),
          user1.mobileNo.toString(),
        ),
      );
    }

    this.sortColumnIndex.value = columnIndex;
    this.isAsending.value = ascending;
  }

  int compareString(bool ascending, String value1, String value2) {
    return ascending ? value1.compareTo(value2) : value2.compareTo(value1);
  }

  @override
  void onInit() {
    super.onInit();
    users = User.allUser();
  }
}
